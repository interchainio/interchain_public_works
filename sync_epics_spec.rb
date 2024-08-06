require "rspec"
require_relative "./sync_epics.rb"

require 'octokit'
require 'json'

SCRIPT_VERSION = "0.1.0"
puts "########### sync_epics v#{SCRIPT_VERSION}"

# Set variables
FOREIGN_REPOS = ["cosmos/cosmos-sdk"]  # Replace with actual repository names
IPW_PROJECT_NUMBER = 3  # Replace with your IPW project number
IPW_STORY_TYPE_FIELD_ID = "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo"  # Replace with your Story Type field ID
IPW_EPIC_OPTION_ID = "282f80fd"  # Replace with your Epic option ID
API_LIMIT = 5  # Limit API calls during testing
FAKE_LIMIT = 999  # Some gh calls break w/o an explicit limit set

puts "##### Starting sync_epics.rb script..."
puts "| %-30s | %-40s |" % ["Key", "Value"]
puts "| %-30s | %-40s |" % ["------------------------------", "----------------------------------------"]
puts "| %-30s | %-40s |" % ["SCRIPT_VERSION", SCRIPT_VERSION]
puts "| %-30s | %-40s |" % ["FOREIGN_REPOS", FOREIGN_REPOS.join(", ")]
puts "| %-30s | %-40s |" % ["IPW_PROJECT_NUMBER", IPW_PROJECT_NUMBER]
puts "| %-30s | %-40s |" % ["IPW_STORY_TYPE_FIELD_ID", IPW_STORY_TYPE_FIELD_ID]
puts "| %-30s | %-40s |" % ["IPW_EPIC_OPTION_ID", IPW_EPIC_OPTION_ID]
puts "| %-30s | %-40s |" % ["API_LIMIT", API_LIMIT]
puts

# Initialize Octokit client
client = Octokit::Client.new(:access_token => ENV['GITHUB_TOKEN'])

# Count items in the IPW project
def count_ipw_project_items(client, project_number, fake_limit)
  items = client.project_items(project_number, :per_page => fake_limit)
  items.length
end

# Count initial number of items in IPW project
initial_item_count = count_ipw_project_items(client, IPW_PROJECT_NUMBER, FAKE_LIMIT)
puts "Initial number of items in IPW project: #{initial_item_count}"

# Add an issue to IPW project with `Story Type` and `Status`
def add_issue_to_ipw(client, project_number, issue_url, issue_status, story_type_field_id, epic_option_id, status_field_id, desired_status_option_id)
  puts "Adding issue #{issue_url} to IPW project..."
  issue_id = client.add_project_item(project_number, issue_url).id

  if issue_id.nil?
    puts "Failed to add issue #{issue_url} to IPW project."
  else
    puts "Successfully added issue #{issue_url} with item ID #{issue_id} to IPW project."

    # Update Story Type to Epic
    puts "Updating Story Type to Epic for item ID #{issue_id}..."
    client.update_project_item(project_number, issue_id, { story_type_field_id => epic_option_id })
    puts "Successfully updated Story Type to Epic for item ID #{issue_id}."

    # Update Status
    if status_field_id && desired_status_option_id
      puts "Updating Status for item ID #{issue_id}..."
      client.update_project_item(project_number, issue_id, { status_field_id => desired_status_option_id })
      puts "Successfully updated Status for item ID #{issue_id}."
    else
      puts "Status fields are not defined. Skipping Status update."
    end
  end
  puts
end

# Loop through each foreign repository
FOREIGN_REPOS.each do |repo|
  puts "Processing repository: #{repo}"
  owner, repo_name = repo.split('/')

  # Get the project ID and project number
  puts "Fetching project list for owner: #{owner}"
  project_list = client.projects(owner)
  project = project_list.find { |p| p.name == "Cosmos-SDK" }
  project_id = project.id
  project_number = project.number
  puts "Project ID for #{repo}: #{project_id}"
  puts "Project number for #{repo}: #{project_number}"

  next if project_number.nil?

  # Get the field ID for Story Type in the foreign repo
  story_type_field = client.project_fields(project_number).find { |f| f.name == "Story Type" }
  story_type_field_id = story_type_field.id
  next if story_type_field_id.nil?
  puts "Story Type Field ID for #{repo}: #{story_type_field_id}"

  # Get the field ID for Status in the foreign repo
  status_type_field = client.project_fields(project_number).find { |f| f.name == "Status" }
  status_type_field_id = status_type_field.id
  next if status_type_field_id.nil?
  puts "Status Type Field ID for #{repo}: #{status_type_field_id}"

  # Get the option ID for Epic in the Story Type field
  epic_option_id = story_type_field.options.find { |o| o.name.include?("Epic") }.id
  next if epic_option_id.nil?
  puts "Epic Option ID for #{repo}: #{epic_option_id}"

  # Get all issues with Story Type containing "Epic" and their Status
  items = client.project_items(project_number, :per_page => API_LIMIT)
  issues = items.select do |item|
    item.field_values.any? { |fv| fv.field.id == story_type_field_id && fv.value == epic_option_id }
  end

  if issues.empty?
    puts "No issues found with Story Type containing 'Epic' in repository: #{repo}"
  else
    puts "Found issues with Story Type containing 'Epic' in repository: #{repo}"
    issues.each_with_index do |issue, index|
      break if index >= API_LIMIT
      issue_url = issue.content_url
      issue_status = issue.field_values.find { |fv| fv.field.id == status_type_field_id }&.value || "undefined"
      puts "Issue URL: #{issue_url}, Status: #{issue_status}"
      add_issue_to_ipw(client, IPW_PROJECT_NUMBER, issue_url, issue_status, IPW_STORY_TYPE_FIELD_ID, IPW_EPIC_OPTION_ID, status_type_field_id, desired_status_option_id)
    end
  end
  puts
end

# Count final number of items in IPW project
final_item_count = count_ipw_project_items(client, IPW_PROJECT_NUMBER, FAKE_LIMIT)
puts "Initial number of items in IPW project: #{initial_item_count}, Final number of items in IPW project: #{final_item_count}"

puts "Script completed."