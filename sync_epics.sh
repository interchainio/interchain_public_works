#!/bin/bash

# Versioning
SCRIPT_VERSION="0.0.9"
echo "########### sync_epics v$SCRIPT_VERSION"

# Set variables
FOREIGN_REPOS=("cosmos/cosmos-sdk")  # Replace with actual repository names
IPW_PROJECT_NUMBER=3  # Replace with your IPW project number
IPW_STORY_TYPE_FIELD_ID="PVTSSF_lADOAsuzxc4AkKP5zgcaQoo"  # Replace with your Story Type field ID
IPW_EPIC_OPTION_ID="282f80fd"  # Replace with your Epic option ID

echo "Starting sync_epics.sh script..."
echo "Foreign Repositories: ${FOREIGN_REPOS[@]}"
echo "IPW Project Number: $IPW_PROJECT_NUMBER"
echo "IPW Story Type Field ID: $IPW_STORY_TYPE_FIELD_ID"
echo "IPW Epic Option ID: $IPW_EPIC_OPTION_ID"
echo

# Function to count the number of items in the IPW project
count_ipw_project_items() {
    gh project item-list $IPW_PROJECT_NUMBER --limit 1000 --format json --owner interchainio | jq '.items | length'
}

# Count initial number of items in IPW project
initial_item_count=$(count_ipw_project_items)
echo "Initial number of items in IPW project: $initial_item_count"

# Function to add an issue to IPW project and update Story Type
add_issue_to_ipw() {
    local issue_url=$1
    echo "Adding issue $issue_url to IPW project..."
    local issue_id=$(gh project item-add $IPW_PROJECT_NUMBER --owner interchainio --content-id $issue_url --format json | jq -r '.id')

    if [ -z "$issue_id" ]; then
        echo "Failed to add issue $issue_url to IPW project."
    else
        echo "Successfully added issue $issue_url with item ID $issue_id to IPW project."
        echo "Updating Story Type to Epic for item ID $issue_id..."
        gh project item-edit $IPW_PROJECT_NUMBER --owner interchainio --id $issue_id --field-id $IPW_STORY_TYPE_FIELD_ID --single-select-option-id $IPW_EPIC_OPTION_ID
        if [ $? -eq 0 ]; then
            echo "Successfully updated Story Type to Epic for item ID $issue_id."
        else
            echo "Failed to update Story Type to Epic for item ID $issue_id."
        fi
    fi
    echo
}

# Loop through each foreign repository
for repo in "${FOREIGN_REPOS[@]}"; do
    echo "Processing repository: $repo"
    owner=${repo%/*}
    repo_name=${repo#*/}

    # Get the project ID and number
    echo "Fetching project list for owner: $owner"
    project_list=$(gh project list --owner $owner --limit 22 --format json)
    PROJECT=$(echo "$project_list" | jq -r '.projects[] | select(.title == "Cosmos-SDK")')
    PROJECT_ID=$(echo "$PROJECT" | jq -r '.id')
    PROJECT_NUMBER=$(echo "$PROJECT" | jq -r '.number')
    echo "Project ID for $repo: $PROJECT_ID"
    echo "Project number for $repo: $PROJECT_NUMBER"

    if [ -z "$PROJECT_NUMBER" ]; then
        echo "No project found for repository: $repo"
        continue
    fi

    # Get the field ID for Story Type in the foreign repo
    STORY_TYPE_FIELD_ID=$(gh project field-list $PROJECT_NUMBER --owner $owner --format json | jq -r '.fields[] | select(.name == "Story Type").id')
    if [ -z "$STORY_TYPE_FIELD_ID" ]; then
        echo "No Story Type field found in repository: $repo"
        continue
    fi
    echo "Story Type Field ID for $repo: $STORY_TYPE_FIELD_ID"

    # Get the option ID for Epic in the Story Type field
    EPIC_OPTION_ID=$(gh project field-list $PROJECT_NUMBER --owner $owner --format json | jq -r '.fields[] | select(.id == "'"$STORY_TYPE_FIELD_ID"'").options[] | select(.name | contains("Epic")).id')
    if [ -z "$EPIC_OPTION_ID" ]; then
        echo "No Epic option found in Story Type field for repository: $repo"
        continue
    fi
    echo "Epic Option ID for $repo: $EPIC_OPTION_ID"

    # Get all issues with Story Type containing "Epic"
    items=$(gh project item-list $PROJECT_NUMBER --owner $owner --format json)
    issues=$(echo "$items" | jq -r --arg STORY_TYPE_FIELD_ID "$STORY_TYPE_FIELD_ID" '.items[] | select(.fieldValues[] | select(.field.id == $STORY_TYPE_FIELD_ID and .name | contains("Epic"))) | .content.url')

    if [ -z "$issues" ]; then
        echo "No issues found with Story Type containing 'Epic' in repository: $repo"
    else
        echo "Found issues with Story Type containing 'Epic' in repository: $repo"
        for issue_url in $issues; do
            echo "Issue URL: $issue_url"
            add_issue_to_ipw $issue_url
        done
    fi
    echo
done

# Count final number of items in IPW project
final_item_count=$(count_ipw_project_items)
echo "Final number of items in IPW project: $final_item_count"

echo "Script completed."
