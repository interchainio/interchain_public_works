require "json"

# cat ./mocks/backlogs/interchaintest.json| ruby ./copy_epics.rb

project_backlog = JSON.parse(STDIN.read)

project_id = 'PVTI_lADOAsuzxc4AkKP5zgQ9Oxg'
field_id = 'PVTSSF_lADOAsuzxc4AkKP5zgcaQoo'
option_id = '282f80fd'
owner_of_overarching_project = 'strangelove-ventures'
id_number_of_overarching_project = 34

project_backlog["items"].each do |issues|
  if issues.key?("story Type")
    if issues["story Type"].include?("Epic") and issues["content"]["type"] == "Issue"
      issue_url = issues["content"]["url"]
      puts "gh project item-add #{id_number_of_overarching_project} --url #{issue_url} --owner #{owner_of_overarching_project}"
      puts "gh project item-edit --id #{issues["id"]} --project-id #{project_id} --field-id #{field_id} --single-select-option-id string #{option_id}"
    end
  end
end