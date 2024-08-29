#!/bin/bash
set -e

echo '§§§§§§§§§§§§§ starting run_me_graphql.sh §§§§§§§§§§§§§'

# Example of one instance of the mutation with variable names:
# mutation {
#   a${story_id}: addProjectV2ItemById(input: {projectId: ${project_id}, contentId: ${content_id}}) {
#     item {
#       id
#     }
#   }
#   t${story_id}: updateProjectV2ItemFieldValue(input: {
#     projectId: ${project_id},
#     itemId: ${story_id},
#     fieldId: ${story_type_field_id},
#     value: { singleSelectOptionId: ${epic_option_id} }
#   }) {
#     projectV2Item {
#       id
#     }
#   }
#   s${story_id}: updateProjectV2ItemFieldValue(input: {
#     projectId: ${project_id},
#     itemId: ${story_id},
#     fieldId: ${status_field_id},
#     value: { singleSelectOptionId: ${status_option_id} }
#   }) {
#     projectV2Item {
#       id
#     }
#   }
# }

echo 'Executing GraphQL mutation...'
gh api graphql --silent -f query='
mutation {
  
}
' ${VERBOSE:+--verbose}

echo '§§§§§§§§§§§§§ finished with run_me_graphql.sh §§§§§§§§§§§§§'
