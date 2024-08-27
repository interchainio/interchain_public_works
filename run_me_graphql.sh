echo 'Updating story type for EPIC: Release v1.0.0'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWZUI",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for EPIC: Release v1.0.0'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWZUI",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Roadmap is outdated'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWagA",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Roadmap is outdated'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWagA",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Support backward compatiblity checks in e2e testing'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgL1rRc",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Support backward compatiblity checks in e2e testing'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgL1rRc",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Find workaround for failing sonar builds when making PR from forks'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWamk",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Find workaround for failing sonar builds when making PR from forks'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWamk",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for expand .golangci-lint yaml'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWaqk",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for expand .golangci-lint yaml'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWaqk",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Consider adding "must" prefix to methods that panic'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWau4",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Consider adding "must" prefix to methods that panic'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWau4",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Code review: Using ibc-go (cosmos/interchain-security)'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWay4",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Code review: Using ibc-go (cosmos/interchain-security)'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWay4",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Run happy path integration tests only on push/merge to main'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWbIE",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Run happy path integration tests only on push/merge to main'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWbIE",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Rewrite some of legacy integration tests'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWo90",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Rewrite some of legacy integration tests'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWo90",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Fix flaking integration tests'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWuOI",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Fix flaking integration tests'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWuOI",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for SDK 50 upgrade'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgI26mM",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for SDK 50 upgrade'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgI26mM",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Refactor more integration tests to consider multiple consumers'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWxoM",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Refactor more integration tests to consider multiple consumers'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWxoM",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Improve tests to make sure we are using different keys for Operator Address and Cons Address'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWxs4",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Improve tests to make sure we are using different keys for Operator Address and Cons Address'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWxs4",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Add custom static analysis rules to our CI'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWxx0",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Add custom static analysis rules to our CI'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWxx0",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Refactor UTs to use consistent test strategy '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWx1k",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Refactor UTs to use consistent test strategy '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWx1k",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Improve unit testing setup'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWx5M",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Improve unit testing setup'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWx5M",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Potential bug in e2e test setup'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWx_E",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Potential bug in e2e test setup'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWx_E",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Use consistent VSC/VSU/ValsetUpdate symbol names'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWyiA",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Use consistent VSC/VSU/ValsetUpdate symbol names'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWyiA",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for No ADR for jail throttling '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWZ58",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for No ADR for jail throttling '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWZ58",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Tidy up docs directory'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWymk",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Tidy up docs directory'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWymk",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Run an instance of `pre-commit`.'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWyvI",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Run an instance of `pre-commit`.'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWyvI",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Remove template_client from CCV provider genesis'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWy0c",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Remove template_client from CCV provider genesis'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWy0c",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Deleted validator can leave residual OutstandingDowntime=true state on consumer leading to fault if new validator added'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWz1o",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Deleted validator can leave residual OutstandingDowntime=true state on consumer leading to fault if new validator added'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWz1o",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEW0E4",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEW0E4",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEW0uU",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEW0uU",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Consider aggregating errors that happend during queries'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEW0h8",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Consider aggregating errors that happend during queries'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEW0h8",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for EPIC: Upgrade to v8.0.0'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEW7fQ",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for EPIC: Upgrade to v8.0.0'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEW7fQ",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEW1yQ",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEW1yQ",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Every few hours `err="unable to delete version 14371500 with 1 active readers"`'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgFVGnA",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Every few hours `err="unable to delete version 14371500 with 1 active readers"`'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgFVGnA",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for EPIC: Upgrade to v9.0.0'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEXE9k",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for EPIC: Upgrade to v9.0.0'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEXE9k",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for No CHANGELOG.md'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEXx1A",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for No CHANGELOG.md'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEXx1A",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for refactor difftest setup'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgJB_WU",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for refactor difftest setup'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgJB_WU",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for test soft opt-out with diff testing'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgHd5zM",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for test soft opt-out with diff testing'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgHd5zM",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for difftest core: Amend diff model with throttle changes once spec has been updated'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWn8s",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for difftest core: Amend diff model with throttle changes once spec has been updated'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWn8s",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for difftest core: model and test Redelegate operations'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEX_dg",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for difftest core: model and test Redelegate operations'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEX_dg",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for diff-test core: improve tests to use cryptolib'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEn49Y",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for diff-test core: improve tests to use cryptolib'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEn49Y",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for difftest core: model and test Unjail operations'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEX_O4",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for difftest core: model and test Unjail operations'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEX_O4",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Improve UTs for ibc_module.go'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEX_kw",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Improve UTs for ibc_module.go'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEX_kw",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Add ChanCloseConfirm to IBC-GO testing'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEX_7c",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Add ChanCloseConfirm to IBC-GO testing'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEX_7c",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Integration or e2e tests around custom params'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEYAGQ",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Integration or e2e tests around custom params'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEYAGQ",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEYG0k",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEYG0k",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Add consumer chain timeout e2e/integration tests'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEYIRI",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Add consumer chain timeout e2e/integration tests'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEYIRI",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Build tags assigned incorrectly ("netgo ledger,") with Make 4.3+'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEaoT8",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Build tags assigned incorrectly ("netgo ledger,") with Make 4.3+'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEaoT8",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for V8: Update Gaia roadmap'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEgnqs",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for V8: Update Gaia roadmap'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEgnqs",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for CI settings prevent updates to older gaias'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEihMU",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for CI settings prevent updates to older gaias'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEihMU",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Fast Node'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEap0Q",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Fast Node'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEap0Q",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for genesis incompatibility between versions'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEaqpY",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for genesis incompatibility between versions'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEaqpY",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Unable to sign multisignature transaction'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEarDU",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Unable to sign multisignature transaction'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEarDU",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Potential dead code'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEcyXw",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Potential dead code'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEcyXw",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Add Hermes e2e tests'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEdD5Y",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Add Hermes e2e tests'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEdD5Y",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for No guideline for QA process'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEe8kU",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for No guideline for QA process'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEe8kU",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for EPIC: Standardize QA processes for ICS repo'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEe8mU",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for EPIC: Standardize QA processes for ICS repo'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEe8mU",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Add documentation explaining differences between consumer and democ consumer'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEfqCI",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Add documentation explaining differences between consumer and democ consumer'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEfqCI",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Implement sovereign -> consumer chain changeover'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEfshM",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Implement sovereign -> consumer chain changeover'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEfshM",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for MBT: Add soft opt-out'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgLdoVI",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for MBT: Add soft opt-out'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgLdoVI",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Document precise cases when assigning a consumer key K is allowed'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEgmfw",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Document precise cases when assigning a consumer key K is allowed'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEgmfw",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgOBbJo",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgOBbJo",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Opted in validators do not get jailed twice'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgN8unQ",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Opted in validators do not get jailed twice'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgN8unQ",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for panic: runtime error: invalid memory address or nil pointer dereference'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgIbgXY",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for panic: runtime error: invalid memory address or nil pointer dereference'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgIbgXY",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for unknown query path for `gaiad query interchain-accounts controller params`'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgOJu3o",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for unknown query path for `gaiad query interchain-accounts controller params`'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgOJu3o",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEgmx0",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEgmx0",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for State sync update'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEgnYM",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for State sync update'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEgnYM",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Need Updated Query for Atom Node v15.1.0'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgN2LhI",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Need Updated Query for Atom Node v15.1.0'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgN2LhI",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Unbonding pausing waits for uninvolved consumer chains'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgNwJR4",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Unbonding pausing waits for uninvolved consumer chains'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgNwJR4",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Epochs: Testnet testing'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgM2Cgs",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Epochs: Testnet testing'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgM2Cgs",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Unable to use  REST Server  after upgrading to v15'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgMy6js",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Unable to use  REST Server  after upgrading to v15'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgMy6js",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Partial Set Security: Test on a testnet'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgMVpWY",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Partial Set Security: Test on a testnet'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgMVpWY",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgLQNMs",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgLQNMs",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgLtA_U",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgLtA_U",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for QA plan is not up-to-date'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWaaI",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for QA plan is not up-to-date'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEWaaI",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Partial Set Security: Introduce integration & E2E tests'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgMjti4",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Partial Set Security: Introduce integration & E2E tests'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgMjti4",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for `StopConsumerChainProposal` to unlock unbondings locked with `LockUnbondingOnTimeout`'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEiyJE",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for `StopConsumerChainProposal` to unlock unbondings locked with `LockUnbondingOnTimeout`'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEiyJE",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Reformat transaction flags in E2E tests'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgGrz9w",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Reformat transaction flags in E2E tests'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgGrz9w",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for GovPreventSpamDecorator is no longer needed'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgMTSrI",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for GovPreventSpamDecorator is no longer needed'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgMTSrI",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgNdx6Q",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgNdx6Q",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for After update to v15.1.0, node does not work, no logs'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgNnm4A",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for After update to v15.1.0, node does not work, no logs'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgNnm4A",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgNdx-0",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgNdx-0",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for [Bug]: error when parsing blocks produced around v15 upgrade'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgNqvbU",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for [Bug]: error when parsing blocks produced around v15 upgrade'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgNqvbU",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Improve coverage around starting/stopping/restarting'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEgmuE",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Improve coverage around starting/stopping/restarting'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEgmuE",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Document use/relevance of `Other code/resources/docs websites` in the Cosmos org'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgF61Ko",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Document use/relevance of `Other code/resources/docs websites` in the Cosmos org'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgF61Ko",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Signaling proposal for enabling ICA Controller feature'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgG8qnU",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Signaling proposal for enabling ICA Controller feature'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgG8qnU",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Update Issue Labelling to be consistent across repos and projects'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEh2x0",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Update Issue Labelling to be consistent across repos and projects'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEh2x0",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Add migration for new ICS param (BlocksPerEpoch)'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgN98IY",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Add migration for new ICS param (BlocksPerEpoch)'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgN98IY",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgN9g9o",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgN9g9o",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Atom Upgrade to v15.0.0 from v14.1.0 not working'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgNq7lM",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Atom Upgrade to v15.0.0 from v14.1.0 not working'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgNq7lM",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Update Cosmos network site with working RPC endpoints'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgFCzIU",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Update Cosmos network site with working RPC endpoints'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgFCzIU",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for add rate limits cf gov proposal'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgN_laA",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for add rate limits cf gov proposal'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgN_laA",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for enable & refactor e2e tests'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgKUFlM",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for enable & refactor e2e tests'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgKUFlM",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Add epochs to ICS protocol'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgLXQ08",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Add epochs to ICS protocol'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgLXQ08",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for enable the ICA controller on Gaia'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgNKyTs",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for enable the ICA controller on Gaia'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgNKyTs",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for docs: Gaia Docs Upgrade needs a facelift'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEhjQk",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for docs: Gaia Docs Upgrade needs a facelift'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEhjQk",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Partial Set Security: Compute the Top N validators and opt them in'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgMVpMA",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Partial Set Security: Compute the Top N validators and opt them in'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgMVpMA",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for build: sign build artificats using Github Actions'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEifl4",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for build: sign build artificats using Github Actions'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEifl4",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Partial Set Security: Construct and send the partial sets to the consumers'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgMVoyE",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Partial Set Security: Construct and send the partial sets to the consumers'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgMVoyE",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for No query for oldest unconfirmed VSCPacket'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgI_sxw",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for No query for oldest unconfirmed VSCPacket'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgI_sxw",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Key assignment adds iteration on `MsgCreateValidator`'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEixf8",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Key assignment adds iteration on `MsgCreateValidator`'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgEixf8",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for `consumer-opted-in-validators` query does not work'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgN7QmE",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for `consumer-opted-in-validators` query does not work'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgN7QmE",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for Update documentation about `DenomOwners` no longer being available'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgMT9OA",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for Update documentation about `DenomOwners` no longer being available'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgMT9OA",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for IBC Rate Limit integration '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgNdgWQ",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for IBC Rate Limit integration '
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgNdgWQ",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story type for update docs after upgrading to cosmos-sdk v47 and ibc-go v7'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgG8qcE",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQoo",
    value: {
      singleSelectOptionId: "282f80fd" # ID for "Epic"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

echo 'Updating story status for update docs after upgrading to cosmos-sdk v47 and ibc-go v7'
gh api graphql -f query='mutation {
  updateProjectV2ItemFieldValue(input: {
    projectId: "PVT_kwDOAsuzxc4AkKP5",
    itemId: "PVTI_lADOAAN9684AKm_5zgG8qcE",
    fieldId: "PVTSSF_lADOAsuzxc4AkKP5zgcaQn8",
    value: {
      singleSelectOptionId: "47fc9ee4"
    }
  }) {
    projectV2Item {
      id
    }
  }
}'

