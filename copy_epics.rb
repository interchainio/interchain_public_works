require "json"

# TODO
# 1. Switch from stubs to live data (do we actually need to do this? Could just get fresh stubs)
# 2. HMW read the **status** from the enemy story and map it to our status?
# 3. Are we having a problem seeing IPW listed an an active project on the issue itself?

# Directory containing the JSON files
backlog_stubs = "./mocks/backlogs"

# Clear the run_me.sh file if it exists
run_me_file = "run_me.sh"
File.open(run_me_file, "w") {}

# Project-specific details

ipw_project_owner         = 'interchainio'
ipw_project_number        = 3
ipw_project_id            = 'PVT_kwDOAsuzxc4AkKP5'
ipw_story_type_field_id   = 'PVTSSF_lADOAsuzxc4AkKP5zgcaQoo'
ipw_option_id_for_epic    = '282f80fd'
ipw_story_status_field_id = 'PVTSSF_lADOAsuzxc4AkKP5zgcaQn8'  # Assuming this is the correct field ID for story status

# Status IDs mapping
ipw_status_id_map = {
  "☃️ Icebox" => "d958ab90",
  "📋 Backlog" => "f75ad846",
  "🤸‍♂️ In Progress" => "47fc9ee4",
  "👀 Waiting / In review" => "2ab45224",
  "🥳 Done" => "98236657"
}

# Iterate over each JSON file in the backlog_stubs
Dir.glob("#{backlog_stubs}/*.json").each do |file_path|
  project_backlog = JSON.parse(File.read(file_path))

  File.open(run_me_file, "a") do |file|
    project_backlog["items"].each do |issues|
      if issues.key?("story Type")
        if issues["story Type"].include?("Epic") and issues["content"]["type"] == "Issue"
          issue_url = issues["content"]["url"]
          issue_title = issues["content"]["title"]
          issue_status = issues["status"]
          ipw_option_id_for_story_status = ipw_status_id_map[issue_status]

          file.puts "### Item Add: #{issue_title} (#{issue_url})"
          file.puts "gh project item-add #{ipw_project_number} --url #{issue_url} --owner #{ipw_project_owner}"
          file.puts "\n"
          file.puts "#### Item Edit: #{issue_title}, #{issues["id"]}"
          file.puts "##### Item Edit: set story type to Epic"
          file.puts "gh project item-edit --id #{issues["id"]} --project-id #{ipw_project_id} --field-id #{ipw_story_type_field_id} --single-select-option-id #{ipw_option_id_for_epic}"

          issue_id_in_ipw = gh p item-list 3 --owner interchainio --limit 500 --format json | jq -r '.items[] | select(.content.url == "https://github.com/strangelove-ventures/interchaintest/issues/882") | .id'

          file.puts "###### Item Edit: set story status #{issue_status}"
          file.puts "gh project item-edit --id #{issues_id_in_ipw} --project-id #{ipw_project_id} --field-id #{ipw_story_status_field_id} --single-select-option-id #{ipw_option_id_for_story_status}"
          file.puts "\n # ---\n\n"
        end
      end
    end
  end
end

# Make the run_me.sh file executable
system("chmod +x #{run_me_file}")

