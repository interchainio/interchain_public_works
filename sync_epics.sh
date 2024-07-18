#!/bin/bash

# Versioning
SCRIPT_VERSION="0.0.9"
echo "########### sync_epics v$SCRIPT_VERSION"

# Set variables
FOREIGN_REPOS=("cosmos/cosmos-sdk")  # Replace with actual repository names
IPW_PROJECT_NUMBER=3  # Replace with your IPW project number
IPW_STORY_TYPE_FIELD_ID="PVTSSF_lADOAsuzxc4AkKP5zgcaQoo"  # Replace with your Story Type field ID
IPW_EPIC_OPTION_ID="282f80fd"  # Replace with your Epic option ID

echo "##### Starting sync_epics.sh script..."
echo "Foreign Repositories: ${FOREIGN_REPOS[@]}"
echo "IPW Project Number: $IPW_PROJECT_NUMBER"
echo "IPW Story Type Field ID: $IPW_STORY_TYPE_FIELD_ID"
echo "IPW Epic Option ID: $IPW_EPIC_OPTION_ID"
echo

# Count items in the IPW project
count_ipw_project_items() {
    gh project item-list $IPW_PROJECT_NUMBER --limit 1000 --format json --owner interchainio | jq '.items | length'
}

# Count initial number of items in IPW project
initial_item_count=$(count_ipw_project_items)
echo "Initial number of items in IPW project: $initial_item_count"

# Add an issue to IPW project w `Story Type`` and `Status``
add_issue_to_ipw() {
    local issue_url=$1
    echo "Adding issue $issue_url to IPW project..."
    local issue_id=$(gh project item-add $IPW_PROJECT_NUMBER --owner interchainio --content-id $issue_url --format json | jq -r '.id')

    if [ -z "$issue_id" ]; then
        echo "Failed to add issue $issue_url to IPW project."
    else
        echo "Successfully added issue $issue_url with item ID $issue_id to IPW project."

        # Update Story Type to Epic
        echo "Updating Story Type to Epic for item ID $issue_id..."
        gh project item-edit $IPW_PROJECT_NUMBER --owner interchainio --id $issue_id --field-id $IPW_STORY_TYPE_FIELD_ID --single-select-option-id $IPW_EPIC_OPTION_ID
        if [ $? -eq 0 ]; then
            echo "Successfully updated Story Type to Epic for item ID $issue_id."
        else
            echo "Failed to update Story Type to Epic for item ID $issue_id."
        fi

        # Update Status (Assuming $IPW_STATUS_FIELD_ID and $IPW_DESIRED_STATUS_OPTION_ID are defined)
        echo "Updating Status for item ID $issue_id..."
        gh project item-edit $IPW_PROJECT_NUMBER --owner interchainio --id $issue_id --field-id $IPW_STATUS_FIELD_ID --single-select-option-id $IPW_DESIRED_STATUS_OPTION_ID
        if [ $? -eq 0 ]; then
            echo "Successfully updated Status for item ID $issue_id."
        else
            echo "Failed to update Status for item ID $issue_id."
        fi
    fi
    echo
}
# Loop through each foreign repository
for repo in "${FOREIGN_REPOS[@]}"; do
    echo "Processing repository: $repo"
    owner=${repo%/*}
    repo_name=${repo#*/}

    # Get the project ID and project number
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

    # Get the field ID for Stauts in the foreign repo
STATUS_TYPE_FIELD_ID=$(gh project field-list $PROJECT_NUMBER --owner $owner --format json | jq -r '.fields[] | select(.name == "Status").id')
    if [ -z "$STATUS_TYPE_FIELD_ID" ]; then
        echo "No Status Type field found in repository: $repo"
        continue
    fi
    echo "Status Type Field ID for $repo: $STATUSE_FIELD_ID"

    # Get the option ID for Epic in the Story Type field
    EPIC_OPTION_ID=$(gh project field-list $PROJECT_NUMBER --owner $owner --format json | jq -r '.fields[] | select(.id == "'"$STORY_TYPE_FIELD_ID"'").options[] | select(.name | contains("Epic")).id')
    if [ -z "$EPIC_OPTION_ID" ]; then
        echo "No Epic option found in Story Type field for repository: $repo"
        continue
    fi
    echo "Epic Option ID for $repo: $EPIC_OPTION_ID"

# Get all issues with Story Type containing "Epic" and their Status
items=$(gh project item-list $PROJECT_NUMBER --owner $owner --format json)
issues=$(echo "$items" | jq -r --arg STORY_TYPE_FIELD_ID "$STORY_TYPE_FIELD_ID" --arg STATUS_FIELD_ID "$STATUS_FIELD_ID" '.items[] | select(.fieldValues[] | select(.field.id == $STORY_TYPE_FIELD_ID and .name | contains("Epic"))) | "\(.content.url) \(.fieldValues[] | select(.field.id == $STATUS_FIELD_ID).value)"')

if [ -z "$issues" ]; then
    echo "No issues found with Story Type containing 'Epic' in repository: $repo"
else
    echo "Found issues with Story Type containing 'Epic' in repository: $repo"
    for issue in $issues; do
        issue_url=$(echo "$issue" | awk '{print $1}')
        issue_status=$(echo "$issue" | awk '{print $2}')
        echo "Issue URL: $issue_url, Status: $issue_status"
        add_issue_to_ipw $issue_url $issue_status
    done
fi
echo
done

# Count final number of items in IPW project
final_item_count=$(count_ipw_project_items)
echo "Final number of items in IPW project: $final_item_count"

echo "Script completed."


# ➜  interchain_public_works git:(main) ./sync_epics.sh
# ########### sync_epics v0.0.9
# ##### Starting sync_epics.sh script...
# Foreign Repositories: cosmos/cosmos-sdk
# IPW Project Number: 3
# IPW Story Type Field ID: PVTSSF_lADOAsuzxc4AkKP5zgcaQoo
# IPW Epic Option ID: 282f80fd

# Initial number of items in IPW project: 182
# Processing repository: cosmos/cosmos-sdk
# Fetching project list for owner: cosmos
# Project ID for cosmos/cosmos-sdk: PVT_kwDOAAN9684ABqEw
# Project number for cosmos/cosmos-sdk: 26
# Story Type Field ID for cosmos/cosmos-sdk: PVTSSF_lADOAAN9684ABqEwzgUA_b0
# Status Type Field ID for cosmos/cosmos-sdk:
# Epic Option ID for cosmos/cosmos-sdk: c787afd8
# jq: error (at <stdin>:1): Cannot iterate over null (null)
# No issues found with Story Type containing 'Epic' in repository: cosmos/cosmos-sdk

# Final number of items in IPW project: 182
# Script completed.

#
# gh project item-list 26 --owner cosmos --format json | jq -r --arg STORY_TYPE_FIELD_ID "PVTSSF_lADOAAN9684ABqEwzgUA_b0"'.items[] | select(.fieldValues[] | select(.field.id == $STORY_TYPE_FIELD_ID and .name | contains("Epic"))) | "\(.content.url)"')
# gh project item-list 26 --owner cosmos --format json | jq -r --arg STORY_TYPE_FIELD_ID "PVTSSF_lADOAAN9684ABqEwzgUA_b0" --arg STATUS_FIELD_ID "$STATUS_FIELD_ID" '.items[] | select(.fieldValues[] | select(.field.id == $STORY_TYPE_FIELD_ID and .name | contains("Epic"))) | "\(.content.url) \(.fieldValues[] | select(.field.id == $STATUS_FIELD_ID).value)"')
#
