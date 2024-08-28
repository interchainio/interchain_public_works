require 'yaml'
require 'json'

config = YAML.load_file('projects_config.yaml')

config['projects'].each do |project|
  owner = project['owner']
  project_number = project['project_number']
  
  # Fetch project details using GitHub CLI
  project_json = `gh project view #{project_number} --owner #{owner} --format json`
  project_details = JSON.parse(project_json)
  
  # Add title to the project configuration
  project['title'] = project_details['title']
end

# Write updated configuration back to the file
File.open('projects_config.yaml', 'w') { |f| YAML.dump(config, f) }

puts "Updated projects_config.yaml with project titles."