require 'json'

# Directory containing the JSON files
graphql_output = './foreign_epics.json' # Assuming graphql.sh saves the output here

# Clear the run_me.sh file if it exists
run_me_file = 'PUT_epics_to_IPW.sh'
File.open(run_me_file, 'w') {}

# Project-specific details
ipw_project_owner = 'interchainio'
ipw_project_number = 3
ipw_project_id = 'PVT_kwDOAsuzxc4AkKP5'
ipw_story_type_field_id = 'PVTSSF_lADOAsuzxc4AkKP5zgcaQoo'
ipw_option_id_for_epic = '282f80fd'
ipw_story_status_field_id = 'PVTSSF_lADOAsuzxc4AkKP5zgcaQn8'

# Status IDs mapping (this should match the statuses from the original project)
ipw_status_id_map = {
  "☃️ Icebox" => "d958ab90",
  "📋 Backlog" => "f75ad846",
  "🤸‍♂️ In Progress" => "47fc9ee4",
  "👀 Waiting / In review" => "2ab45224",
  "🥳 Done" => "98236657"
}

# Read the JSON output from graphql.sh
begin
  project_backlog = JSON.parse(File.read(graphql_output))
rescue Errno::ENOENT
  puts "Error: Could not read the file #{graphql_output}. Make sure graphql.sh generated the JSON output correctly."
  exit 1
end

# Process each story in the JSON and generate commands
File.open(run_me_file, 'a') do |file|
  project_backlog['data']['node']['items']['nodes'].each do |story|
    # Coerce the story to Epic regardless of the storyType field
    issue_url = story['content']['url']
    issue_title = story['content']['title']
    issue_status = story['status'] ? story['status']['name'] : nil
    ipw_option_id_for_story_status = issue_status ? ipw_status_id_map[issue_status] : nil

    if issue_url && issue_title
      # Add the Epic story to the IPW project
      file.puts "### Item Add: #{issue_title} (#{issue_url})"
      file.puts "gh project item-add #{ipw_project_number} --url #{issue_url} --owner #{ipw_project_owner}"
      file.puts "\n"

      # Get the newly added issue's ID in IPW
      issue_id_in_ipw = `gh project item-list #{ipw_project_number} --owner #{ipw_project_owner} --limit 500 --format json | jq -r '.items[] | select(.content.url == "#{issue_url}") | .id'`.strip

      # Set the story type to Epic
      file.puts "#### Item Edit: #{issue_title}, #{story['id']}"
      file.puts "##### Item Edit: set story type to Epic"
      file.puts "gh project item-edit --id #{issue_id_in_ipw} --project-id #{ipw_project_id} --field-id #{ipw_story_type_field_id} --single-select-option-id #{ipw_option_id_for_epic}"

      # Set the story status if available
      if ipw_option_id_for_story_status
        file.puts "###### Item Edit: set story status #{issue_status}"
        file.puts "gh project item-edit --id #{issue_id_in_ipw} --project-id #{ipw_project_id} --field-id #{ipw_story_status_field_id} --single-select-option-id #{ipw_option_id_for_story_status}"
      else
        file.puts "###### Item Edit: No status provided for #{issue_title}"
      end

      file.puts "\n# ---\n\n"
    else
      puts "Error: Missing information for story #{issue_title}. Skipping..."
    end
  end
end

# Make the run_me.sh file executable
system("chmod +x #{run_me_file}")

