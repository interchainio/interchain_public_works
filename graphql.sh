#!/bin/bash

# Ensure yq is installed
if ! command -v yq &> /dev/null
then
    echo "yq could not be found, installing..."
    brew install yq || { echo "Failed to install yq. Please install it manually."; exit 1; }
fi

# Link Configuration file
CONFIG_FILE="projects_config.yaml"

# Fetch Epic stories from a project
fetch_epics() {
  local OWNER="$1"
  local PROJECT_ID="$2"
  local STORY_TYPE_FIELD_NAME="Story Type" # Assuming this is the field name
  local STATUS_FIELD_NAME="Status"        # Assuming this is the field name
  local EPIC_OPTION_ID="$3"
  local STATUS_OPTION_MAPPING="$4"

  echo "######### Fetching Epics from ${OWNER}/${PROJECT_ID} #########"

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
  }' | jq '.data.node.items.nodes[] | select(.storyType.name == "👑 Epic")' || { echo "Failed to fetch or filter Epics."; exit 1; }
}

# Error handling for missing configuration file
if [[ ! -f "${CONFIG_FILE}" ]]; then
  echo "Configuration file '${CONFIG_FILE}' not found!"
  exit 1
fi

echo "######### GraphQL Epic Fetcher v0.0.11 #########"

# Fetch Epics for each project in the configuration file
for i in $(yq e '.projects | keys | .[]' ${CONFIG_FILE}); do
  OWNER=$(yq e ".projects[$i].owner" ${CONFIG_FILE})
  PROJECT_NUMBER=$(yq e ".projects[$i].project_number" ${CONFIG_FILE})
  STORY_TYPE_FIELD_ID=$(yq e ".projects[$i].story_type_field_id" ${CONFIG_FILE})
  STATUS_FIELD_ID=$(yq e ".projects[$i].status_field_id" ${CONFIG_FILE})
  EPIC_OPTION_ID=$(yq e ".projects[$i].epic_option_id" ${CONFIG_FILE})
  STATUS_OPTION_MAPPING=$(yq e ".projects[$i].status_option_mapping | to_entries | map(\"\(.key):\(.value)\") | join(\", \")" ${CONFIG_FILE})

  echo "# @@@@@@ Debugging Output"
  echo "@@@ Owner: $OWNER"
  echo "@@@ Project Number: $PROJECT_NUMBER"
  echo "@@@ Story Type Field ID: $STORY_TYPE_FIELD_ID"
  echo "@@@ Status Field ID: $STATUS_FIELD_ID"
  echo "@@@ Epic Option ID: $EPIC_OPTION_ID"
  echo "@@@ Status Option Mapping: $STATUS_OPTION_MAPPING"
  echo ""

  if [ -z "$PROJECT_NUMBER" ]; then
    echo "Project Number is null for ${OWNER}. Skipping..."
    continue
  fi

  ## Fetch the Project ID using the project number directly
  PROJECT_ID=$(gh api graphql -f query="
  query {
    organization(login: \"${OWNER}\") {
      projectV2(number: ${PROJECT_NUMBER}) {
        id
      }
    }
  }" -q .data.organization.projectV2.id)

  ## Debugging Output
  echo "#### Project ID: $PROJECT_ID"

  if [ -z "$PROJECT_ID" ]; then
    echo "Failed to retrieve Project ID for ${OWNER}/${PROJECT_NUMBER}."
    continue
  fi

  ## Fetch and display Epic stories
  fetch_epics "${OWNER}" "${PROJECT_ID}" "${EPIC_OPTION_ID}" "${STATUS_OPTION_MAPPING}"
done

echo ""
echo ""
echo "~~~~~~~######### Script Completed #########~~~~~~~"
