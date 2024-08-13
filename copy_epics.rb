require "json"

# TODO
# 1. swich from stubs to live data (do we actually need to do this? Could just get fresh stubs)
# 2. HMW read the **status** from the enemy story and map it to our status?

# Directory containing the JSON files
backlog_stubs = "./mocks/backlogs"

# Clear the run_me.sh file if it exists
run_me_file = "run_me.sh"
File.open(run_me_file, "w") {}

# Project-specific details
overarching_project_owner_of_overarching_project = 'strangelove-ventures'
overarching_project_number                       = 34 # design project, for testing
overarching_project_id                           = 'PVTI_lADOAsuzxc4AkKP5zgQ9Oxg'
ipw_story_type_field_id                          = 'PVTSSF_lADOAsuzxc4AkKP5zgcaQoo'
ipw_option_id_for_epic                           = '282f80fd'
ipw_story_status_field_id                        = ""
ipw_option_id_for_story_status                   = ""


# story_status for ipw
# {
#   "id": "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
#   "name": "Status",
#   "options": [
#     {
#       "id": "d958ab90",
#       "name": "☃️ Icebox"
#     },
#     {
#       "id": "f75ad846",
#       "name": "📋 Backlog"
#     },
#     {
#       "id": "47fc9ee4",
#       "name": "🤸‍♂️ In Progress"
#     },
#     {
#       "id": "2ab45224",
#       "name": "👀 Waiting / In review"
#     },
#     {
#       "id": "98236657",
#       "name": "🥳 Done"
#     }
#   ],
#   "type": "ProjectV2SingleSelectField"
# },

#       |id       | name|
#       |---------|-----|
#       |d958ab90 |☃️ Icebox|
#       |f75ad846 |📋 Backlog|
#       |47fc9ee4 |🤸‍♂️ In Progress|
#       |2ab45224 |👀 Waiting / In review|
#       |98236657 |🥳 Done|

# Iterate over each JSON file in the backlog_stubs
Dir.glob("#{backlog_stubs}/*.json").each do |file_path|
  project_backlog = JSON.parse(File.read(file_path))

  File.open(run_me_file, "a") do |file|
    project_backlog["items"].each do |issues|
      if issues.key?("story Type")
        if issues["story Type"].include?("Epic") and issues["content"]["type"] == "Issue"
          issue_url = issues["content"]["url"]
          issue_story_status = issues["status"]
          file.puts "### Item Add: #{issue_url}"
          file.puts "gh project item-add #{overarching_project_number} --url #{issue_url} --owner #{overarching_project_owner_of_overarching_project}"
          file.puts "\n"
          file.puts "#### Item Edit: #{issues["id"]}"
          file.puts "##### Item Edit: set story type"
          file.puts "gh project item-edit --id #{issues["id"]} --project-id #{overarching_project_id} --field-id #{ipw_story_type_field_id} --single-select-option-id string #{ipw_option_id_for_epic}"
          file.puts "###### Item Edit: set story status #{issue_story_status}"
          file.puts "gh project item-edit --id #{issues["id"]} --project-id #{overarching_project_id} --field-id #{ipw_story_status_field_id} --single-select-option-id string #{ipw_option_id_for_story_status}"
          file.puts "\n # ---\n\n"
        end
      end
    end
  end
end

# Make the run_me.sh file executable
system("chmod +x #{run_me_file}")
