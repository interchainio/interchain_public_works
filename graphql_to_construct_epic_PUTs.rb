require 'json'
require 'yaml'
require 'optparse'
require 'logger'

logger = Logger.new(STDOUT)
logger.level = Logger::DEBUG

puts "§§§§§§§§§§§ starting #{File.basename(__FILE__)} §§§§§§§§§§§"
puts

# Parse command line options
options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: ruby #{File.basename(__FILE__)} [options]"
  opts.on("-v", "--verbose", "Run in verbose mode") do |v|
    options[:verbose] = v
  end
end.parse!

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
  logger.debug "Processing story: #{story['id']}"

  # Update story type mutation
  update_type_mutation = %Q(
    t#{story['id'].gsub('-', '')}: updateProjectV2ItemFieldValue(input: {
      projectId: "#{config['project_id']}", # Project ID
      itemId: "#{story['id']}", # Item ID
      fieldId: "#{config['story_type_field_id']}", # Field ID (Story Type)
      value: { singleSelectOptionId: "#{config['epic_option_id']}" } # Epic option ID
    }) {
      projectV2Item {
        id
      }
    }
  )

  logger.debug "Generated mutation: #{update_type_mutation}"

  if config['project_id'].to_s.empty? || story['id'].to_s.empty? ||
     config['story_type_field_id'].to_s.empty? || config['epic_option_id'].to_s.empty?
    logger.warn "Warning: Missing required ID for mutation: #{update_type_mutation}"
  else
    mutations << update_type_mutation
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
  file.puts "echo '§§§§§§§§§§§§§ starting #{output_file} §§§§§§§§§§§§§'"
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
  file.puts "gh api graphql --silent -f query='#{full_mutation.gsub("'", "'\\''")}' ${VERBOSE:+--verbose}"
  file.puts
  file.puts "echo '§§§§§§§§§§§§§ finished with #{output_file} §§§§§§§§§§§§§'"
end

# Make the script executable
system("chmod +x #{output_file}")

puts "GraphQL mutation written to #{output_file}"
if options[:verbose]
  puts "Script will run in verbose mode"
else
  puts "Script will run silently (use -v or --verbose for verbose output)"
end
puts
puts "§§§§§§§§§§§ finished with #{File.basename(__FILE__)} §§§§§§§§§§§"