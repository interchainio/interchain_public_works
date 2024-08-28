#!/bin/bash

echo "§§§§§§§§§§ starting $(basename "$0") §§§§§§§§§§"

# Ensure yq is installed
if ! command -v yq &> /dev/null
then
    echo "yq could not be found, installing..."
    brew install yq || { echo "Failed to install yq. Please install it manually."; exit 1; }
fi

# Configuration
CONFIG_FILE="projects_config.yaml"
OUTPUT_FILE="foreign_epics.json"

# Function to fetch Epic stories from a project
fetch_epics() {
  local OWNER="$1"
  local PROJECT_ID="$2"
  local STORY_TYPE_FIELD_NAME="Story Type" # Assuming this is the field name
  local STATUS_FIELD_NAME="Status"        # Assuming this is the field name

  echo "Fetching Epics from ${OWNER}/${PROJECT_ID}"

  # Execute GraphQL query and save the response to output.json
  gh api graphql -f query='
  query {
    node(id: "'"${PROJECT_ID}"'") {
      ... on ProjectV2 {
        items(first: 100) {
          nodes {
            id
            title: fieldValueByName(name: "Title") {
              ... on ProjectV2ItemFieldTextValue {
                text
              }
            }
            storyType: fieldValueByName(name: "'"${STORY_TYPE_FIELD_NAME}"'") {
              ... on ProjectV2ItemFieldSingleSelectValue {
                name
              }
            }
            status: fieldValueByName(name: "'"${STATUS_FIELD_NAME}"'") {
              ... on ProjectV2ItemFieldSingleSelectValue {
                name
              }
            }
            content {
              ... on Issue {
                id
                title
                url
              }
            }
          }
        }
      }
    }
  }' > "${OUTPUT_FILE}"
}

# Main script
if [[ ! -f "${CONFIG_FILE}" ]]; then
  echo "Configuration file '${CONFIG_FILE}' not found!"
  exit 1
fi

echo "Starting GraphQL Epic Fetcher..."

# Loop through the config file and fetch Epics for each project
for i in $(yq e '.projects | keys | .[]' "${CONFIG_FILE}"); do
  OWNER=$(yq e ".projects[$i].owner" "${CONFIG_FILE}")
  PROJECT_NUMBER=$(yq e ".projects[$i].project_number" "${CONFIG_FILE}")

  if [ -z "$PROJECT_NUMBER" ]; then
    echo "Project Number is null for ${OWNER}. Skipping..."
    continue
  fi

  # Fetch the Project ID using the project number directly
  PROJECT_ID=$(gh api graphql -f query="
  query {
    organization(login: \"${OWNER}\") {
      projectV2(number: ${PROJECT_NUMBER}) {
        id
      }
    }
  }" -q .data.organization.projectV2.id)

  if [ -z "$PROJECT_ID" ]; then
    echo "Failed to retrieve Project ID for ${OWNER}/${PROJECT_NUMBER}."
    continue
  fi

  # Fetch and store Epic stories
  fetch_epics "${OWNER}" "${PROJECT_ID}"
done

echo "GraphQL Epic Fetcher completed. Results saved to ${OUTPUT_FILE}."

echo "§§§§§§§§§§ finished with $(basename "$0") §§§§§§§§§§"