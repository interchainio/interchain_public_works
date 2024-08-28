require 'json'
require 'yaml'

# Read config file
begin
  config = YAML.load_file('projects_config.yaml')
rescue StandardError => e
  puts "Error reading config file: #{e.message}"
  exit 1
end

# Read the JSON output from graphql.sh
graphql_output = './foreign_epics.json'
begin
  project_backlog = JSON.parse(File.read(graphql_output))
rescue Errno::ENOENT
  puts "Error: Could not read the file #{graphql_output}. Make sure graphql.sh generated the JSON output correctly."
  exit 1
end

# Open a file to store the GraphQL mutations
File.open('run_me_graphql.sh', 'w') do |file|
  file.puts "#!/bin/bash"
  file.puts "set -e"
  file.puts

  project_backlog['data']['node']['items']['nodes'].each do |story|
    issue_title = story['content']['title']
    issue_id = story['id']

    # Construct the GraphQL mutation for setting the story type to "Epic"
    mutation_story_type = <<-GRAPHQL.gsub(/\s+/, ' ').strip
    mutation { updateProjectV2ItemFieldValue(input: { projectId: "#{config['project_id']}", itemId: "#{issue_id}", fieldId: "#{config['story_type_field_id']}", value: { singleSelectOptionId: "#{config['epic_option_id']}" } }) { projectV2Item { id } } }
    GRAPHQL

    # Write the mutation to the shell script
    file.puts "echo 'Updating story type for #{issue_title}'"
    file.puts "gh api graphql -f query='#{mutation_story_type}'"

    # If a status exists, construct the GraphQL mutation for updating the status
    if story['status'] && config['status_field_id'] && config['status_option_ids']
      status_name = story['status']['name']
      status_option_id = config['status_option_ids'][status_name]
      
      if status_option_id
        mutation_story_status = <<-GRAPHQL.gsub(/\s+/, ' ').strip
        mutation { updateProjectV2ItemFieldValue(input: { projectId: "#{config['project_id']}", itemId: "#{issue_id}", fieldId: "#{config['status_field_id']}", value: { singleSelectOptionId: "#{status_option_id}" } }) { projectV2Item { id } } }
        GRAPHQL

        # Write the status update mutation to the shell script
        file.puts "echo 'Updating story status for #{issue_title}'"
        file.puts "gh api graphql -f query='#{mutation_story_status}'"
      else
        file.puts "echo 'No matching status option found for #{status_name}'"
      end
    end

    file.puts
  end
end

# Make the script executable
system('chmod +x run_me_graphql.sh')

puts "GraphQL mutations written to run_me_graphql.sh"