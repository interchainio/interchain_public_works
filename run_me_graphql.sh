#!/bin/bash
set -e

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
gh api graphql -f query='
mutation {
  
    aPVTI_lADOAAN9684AKm_5zgEWZUI: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5bjkUK"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWZUI: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWZUI",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWagA: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5ZtUrg"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWagA: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWagA",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgL1rRc: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s57vYbX"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgL1rRc: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgL1rRc",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWamk: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5RWJL0"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWamk: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWamk",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWaqk: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5RV05u"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWaqk: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWaqk",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWau4: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5a9FZl"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWau4: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWau4",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWay4: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5IfsJs"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWay4: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWay4",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWbIE: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5XM6MR"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWbIE: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWbIE",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWo90: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5Z_FM0"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWo90: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWo90",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWuOI: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5acmAi"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWuOI: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWuOI",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgI26mM: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5vgrPL"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgI26mM: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgI26mM",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWxoM: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5W7s8b"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWxoM: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWxoM",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWxs4: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5YhC_m"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWxs4: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWxs4",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWxx0: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5ZLFZ5"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWxx0: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWxx0",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWx1k: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5Z15Wc"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWx1k: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWx1k",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWx5M: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5ZV34Z"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWx5M: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWx5M",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWx_E: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5bLkvP"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWx_E: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWx_E",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWyiA: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5Xnqd5"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWyiA: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWyiA",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWZ58: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5Zr0I2"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWZ58: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWZ58",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWymk: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5TWueQ"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWymk: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWymk",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWyvI: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5Qb6Tq"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWyvI: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWyvI",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWy0c: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5XhZMM"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWy0c: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWy0c",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWz1o: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5Wxdub"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWz1o: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWz1o",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEW0E4: addProjectV2ItemById(input: {projectId: "", contentId: ""}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEW0E4: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEW0E4",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEW0uU: addProjectV2ItemById(input: {projectId: "", contentId: ""}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEW0uU: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEW0uU",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEW0h8: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5a9MIM"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEW0h8: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEW0h8",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEW7fQ: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM5blumE"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEW7fQ: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEW7fQ",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEW1yQ: addProjectV2ItemById(input: {projectId: "", contentId: ""}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEW1yQ: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEW1yQ",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgFVGnA: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM5gPO2N"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgFVGnA: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgFVGnA",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEXE9k: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM5bmYk2"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEXE9k: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEXE9k",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEXx1A: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5bpbBo"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEXx1A: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEXx1A",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgJB_WU: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5rUsx-"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgJB_WU: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgJB_WU",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgHd5zM: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5pQ9F_"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgHd5zM: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgHd5zM",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWn8s: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5Xni-C"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWn8s: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWn8s",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEX_dg: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5RAJW6"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEX_dg: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEX_dg",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEn49Y: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5dVNaJ"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEn49Y: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEn49Y",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEX_O4: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5RAKL_"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEX_O4: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEX_O4",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEX_kw: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5SbMdQ"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEX_kw: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEX_kw",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEX_7c: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5LE86g"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEX_7c: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEX_7c",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEYAGQ: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5TiRKg"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEYAGQ: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEYAGQ",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEYG0k: addProjectV2ItemById(input: {projectId: "", contentId: ""}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEYG0k: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEYG0k",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEYIRI: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5bq606"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEYIRI: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEYIRI",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEaoT8: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM5bYvYJ"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEaoT8: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEaoT8",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEgnqs: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM5ck51d"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEgnqs: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEgnqs",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEihMU: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM5Iasgl"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEihMU: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEihMU",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEap0Q: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM5bB8MK"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEap0Q: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEap0Q",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEaqpY: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM5Yh7Jl"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEaqpY: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEaqpY",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEarDU: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM5W_Etb"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEarDU: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEarDU",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEcyXw: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5bp84p"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEcyXw: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEcyXw",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEdD5Y: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM5clK9S"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEdD5Y: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEdD5Y",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEe8kU: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5ctrZY"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEe8kU: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEe8kU",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEe8mU: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5ctriw"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEe8mU: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEe8mU",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEfqCI: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5cuuHX"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEfqCI: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEfqCI",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEfshM: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5QX-Nj"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEfshM: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEfshM",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgLdoVI: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s56NJox"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgLdoVI: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgLdoVI",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEgmfw: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5YBLXX"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEgmfw: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEgmfw",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgOBbJo: addProjectV2ItemById(input: {projectId: "", contentId: ""}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgOBbJo: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgOBbJo",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgN8unQ: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s6EdaKq"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgN8unQ: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgN8unQ",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgIbgXY: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM5twTxI"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgIbgXY: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgIbgXY",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgOJu3o: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM6FTcwk"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgOJu3o: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgOJu3o",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEgmx0: addProjectV2ItemById(input: {projectId: "", contentId: ""}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEgmx0: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEgmx0",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEgnYM: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM5cyeV8"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEgnYM: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEgnYM",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgN2LhI: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM6EBdL_"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgN2LhI: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgN2LhI",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgNwJR4: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s6Dlatc"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgNwJR4: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgNwJR4",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgM2Cgs: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5_1hdp"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgM2Cgs: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgM2Cgs",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgMy6js: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM5_ppRZ"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgMy6js: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgMy6js",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgMVpWY: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s59woX8"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgMVpWY: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgMVpWY",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgLQNMs: addProjectV2ItemById(input: {projectId: "", contentId: ""}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgLQNMs: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgLQNMs",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgLtA_U: addProjectV2ItemById(input: {projectId: "", contentId: ""}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgLtA_U: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgLtA_U",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEWaaI: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5T0rsS"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEWaaI: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEWaaI",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgMjti4: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5-rrbc"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgMjti4: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgMjti4",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEiyJE: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5PkDvF"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEiyJE: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEiyJE",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgGrz9w: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM5laoWD"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgGrz9w: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgGrz9w",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgMTSrI: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM59nFOg"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgMTSrI: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgMTSrI",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgNdx6Q: addProjectV2ItemById(input: {projectId: "", contentId: ""}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgNdx6Q: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgNdx6Q",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgNnm4A: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM6DBvqt"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgNnm4A: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgNnm4A",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgNdx0: addProjectV2ItemById(input: {projectId: "", contentId: ""}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgNdx0: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgNdx-0",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgNqvbU: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM6DQRqz"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgNqvbU: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgNqvbU",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEgmuE: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5Qw9xL"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEgmuE: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEgmuE",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgF61Ko: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM5inUtb"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgF61Ko: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgF61Ko",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgG8qnU: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM5m3mJW"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgG8qnU: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgG8qnU",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEh2x0: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM5c5geT"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEh2x0: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEh2x0",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgN98IY: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s6EipkO"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgN98IY: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgN98IY",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgN9g9o: addProjectV2ItemById(input: {projectId: "", contentId: ""}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgN9g9o: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgN9g9o",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgNq7lM: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM6DRBDn"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgNq7lM: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgNq7lM",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgFCzIU: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM5fFMfs"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgFCzIU: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgFCzIU",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgN_laA: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM6EqRxn"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgN_laA: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgN_laA",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgKUFlM: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s51fhEX"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgKUFlM: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgKUFlM",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgLXQ08: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s55yo3C"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgLXQ08: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgLXQ08",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgNKyTs: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM6BIaNZ"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgNKyTs: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgNKyTs",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEhjQk: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM5TnmOr"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEhjQk: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEhjQk",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgMVpMA: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s59wnsW"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgMVpMA: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgMVpMA",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEifl4: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM5O2NuM"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEifl4: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEifl4",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgMVoyE: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s59wmKg"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgMVoyE: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgMVoyE",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgI_sxw: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5wLYtO"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgI_sxw: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgI_sxw",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgEixf8: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s5ZVn3T"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgEixf8: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgEixf8",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgN7QmE: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOGLDg2s6EXhEH"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgN7QmE: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgN7QmE",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgMT9OA: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM59p9dY"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgMT9OA: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgMT9OA",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgNdgWQ: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM6CUgek"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgNdgWQ: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgNdgWQ",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  

    aPVTI_lADOAAN9684AKm_5zgG8qcE: addProjectV2ItemById(input: {projectId: "", contentId: "I_kwDOCq17LM5m3lYM"}) {
      item {
        id
      }
    }
  

    tPVTI_lADOAAN9684AKm_5zgG8qcE: updateProjectV2ItemFieldValue(input: {
      projectId: "",
      itemId: "PVTI_lADOAAN9684AKm_5zgG8qcE",
      fieldId: "",
      value: { singleSelectOptionId: "" }
    }) {
      projectV2Item {
        id
      }
    }
  
}
'
