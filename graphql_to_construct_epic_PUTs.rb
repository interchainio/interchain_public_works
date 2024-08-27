require 'json'

# Directory containing the JSON files
graphql_output = './foreign_epics.json'

# Read the JSON output from graphql.sh
begin
  project_backlog = JSON.parse(File.read(graphql_output))
rescue Errno::ENOENT
  puts "Error: Could not read the file #{graphql_output}. Make sure graphql.sh generated the JSON output correctly."
  exit 1
end

# Open a file to store the GraphQL mutations
File.open('run_me_graphql.sh', 'w') do |file|
  project_backlog['data']['node']['items']['nodes'].each do |story|
    issue_url = story['content']['url']
    issue_title = story['content']['title']
    issue_status = story['status'] ? story['status']['name'] : nil
    issue_id = story['id']

    # Construct the GraphQL mutation for setting the story type to "Epic"
    mutation_story_type = <<-GRAPHQL
mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "#{issue_id}",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}
    GRAPHQL

    # Write the mutation to the shell script
    file.puts "echo 'Updating story type for #{issue_title}'"
    file.puts "gh api graphql -f query='#{mutation_story_type.strip}'"
    file.puts "\n"

    # If a status exists, construct the GraphQL mutation for updating the status
    if issue_status
      status_option_id = "47fc9ee4" # Replace with actual mapping for the status
      
      mutation_story_status = <<-GRAPHQL
mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "#{issue_id}",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "#{status_option_id}"
    }
  }) {
    projectV2Item {
      id
    }
  }
}
      GRAPHQL

      # Write the status update mutation to the shell script
      file.puts "echo 'Updating story status for #{issue_title}'"
      file.puts "gh api graphql -f query='#{mutation_story_status.strip}'"
      file.puts "\n"
    end
  end
end

# Make the script executable
system('chmod +x run_me_graphql.sh')

puts "GraphQL mutations written to run_me_graphql.sh"
