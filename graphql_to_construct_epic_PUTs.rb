require 'json'
require 'yaml'
# Read config file
config = YAML.load_file('projects_config.yaml')

# Directory containing the JSON files
epics_as_json = './foreign_epics.json'

output_file = 'run_me_graphql.sh'

# Read the JSON output from graphql.sh
begin
  project_backlog = JSON.parse(File.read(epics_as_json))
rescue Errno::ENOENT
  puts "Error: Could not read the file #{epics_as_json}. Is the JSON valid?"
  exit 1
end

# Prepare the mutation
mutations = []
project_backlog['data']['node']['items']['nodes'].each do |story|
  issue_url = story['content']['url']
  issue_title = story['content']['title']

  # Add item mutation
  add_mutation = %Q(
    a#{story['id'].gsub('-', '')}: addProjectV2ItemById(input: {projectId: "#{config['project_id']}", contentId: "#{story['content']['id']}"}) {
      item {
        id
      }
    }
  )
  mutations << add_mutation

  # Update story type mutation
  update_type_mutation = %Q(
    t#{story['id'].gsub('-', '')}: updateProjectV2ItemFieldValue(input: {
      projectId: "#{config['project_id']}",
      itemId: "#{story['id']}",
      fieldId: "#{config['story_type_field_id']}",
      value: { singleSelectOptionId: "#{config['epic_option_id']}" }
    }) {
      projectV2Item {
        id
      }
    }
  )
  mutations << update_type_mutation

  # Update status mutation if status exists
  if story['status'] && config['status_field_id'] && config['status_option_ids']
    status_name = story['status']['name']
    status_option_id = config['status_option_ids'][status_name]
    if status_option_id
      update_status_mutation = %Q(
        s#{story['id'].gsub('-', '')}: updateProjectV2ItemFieldValue(input: {
          projectId: "#{config['project_id']}",
          itemId: "#{story['id']}",
          fieldId: "#{config['status_field_id']}",
          value: { singleSelectOptionId: "#{status_option_id}" }
        }) {
          projectV2Item {
            id
          }
        }
      )
      mutations << update_status_mutation
    end
  end
end

# Construct the full mutation
full_mutation = %Q(
mutation {
  #{mutations.join("\n")}
}
)

# Write the mutation to the shell script
File.open(output_file, 'w') do |file|
  file.puts "#!/bin/bash"
  file.puts "set -e"
  file.puts
  file.puts "# Example of one instance of the mutation with variable names:"
  file.puts "# mutation {"
  file.puts "#   a${story_id}: addProjectV2ItemById(input: {projectId: ${project_id}, contentId: ${content_id}}) {"
  file.puts "#     item {"
  file.puts "#       id"
  file.puts "#     }"
  file.puts "#   }"
  file.puts "#   t${story_id}: updateProjectV2ItemFieldValue(input: {"
  file.puts "#     projectId: ${project_id},"
  file.puts "#     itemId: ${story_id},"
  file.puts "#     fieldId: ${story_type_field_id},"
  file.puts "#     value: { singleSelectOptionId: ${epic_option_id} }"
  file.puts "#   }) {"
  file.puts "#     projectV2Item {"
  file.puts "#       id"
  file.puts "#     }"
  file.puts "#   }"
  file.puts "#   s${story_id}: updateProjectV2ItemFieldValue(input: {"
  file.puts "#     projectId: ${project_id},"
  file.puts "#     itemId: ${story_id},"
  file.puts "#     fieldId: ${status_field_id},"
  file.puts "#     value: { singleSelectOptionId: ${status_option_id} }"
  file.puts "#   }) {"
  file.puts "#     projectV2Item {"
  file.puts "#       id"
  file.puts "#     }"
  file.puts "#   }"
  file.puts "# }"
  file.puts
  file.puts "echo 'Executing GraphQL mutation...'"
  file.puts "gh api graphql -f query='#{full_mutation.gsub("'", "'\\''")}'"
end

# Make the script executable
system("chmod +x #{output_file}")

puts "GraphQL mutation written to #{output_file}"