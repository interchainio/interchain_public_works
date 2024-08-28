#!/bin/bash
set -e

echo 'Updating story type for EPIC: Release v1.0.0'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWZUI", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Roadmap is outdated'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWagA", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Support backward compatiblity checks in e2e testing'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgL1rRc", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Find workaround for failing sonar builds when making PR from forks'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWamk", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for expand .golangci-lint yaml'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWaqk", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Consider adding "must" prefix to methods that panic'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWau4", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Code review: Using ibc-go (cosmos/interchain-security)'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWay4", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Run happy path integration tests only on push/merge to main'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWbIE", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Rewrite some of legacy integration tests'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWo90", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Fix flaking integration tests'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWuOI", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for SDK 50 upgrade'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgI26mM", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Refactor more integration tests to consider multiple consumers'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWxoM", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Improve tests to make sure we are using different keys for Operator Address and Cons Address'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWxs4", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Add custom static analysis rules to our CI'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWxx0", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Refactor UTs to use consistent test strategy '
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWx1k", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Improve unit testing setup'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWx5M", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Potential bug in e2e test setup'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWx_E", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Use consistent VSC/VSU/ValsetUpdate symbol names'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWyiA", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for No ADR for jail throttling '
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWZ58", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Tidy up docs directory'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWymk", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Run an instance of `pre-commit`.'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWyvI", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Remove template_client from CCV provider genesis'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWy0c", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Deleted validator can leave residual OutstandingDowntime=true state on consumer leading to fault if new validator added'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWz1o", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for '
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEW0E4", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for '
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEW0uU", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Consider aggregating errors that happend during queries'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEW0h8", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for EPIC: Upgrade to v8.0.0'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEW7fQ", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for '
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEW1yQ", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Every few hours `err="unable to delete version 14371500 with 1 active readers"`'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgFVGnA", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for EPIC: Upgrade to v9.0.0'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEXE9k", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for No CHANGELOG.md'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEXx1A", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for refactor difftest setup'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgJB_WU", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for test soft opt-out with diff testing'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgHd5zM", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for difftest core: Amend diff model with throttle changes once spec has been updated'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWn8s", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for difftest core: model and test Redelegate operations'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEX_dg", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for diff-test core: improve tests to use cryptolib'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEn49Y", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for difftest core: model and test Unjail operations'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEX_O4", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Improve UTs for ibc_module.go'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEX_kw", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Add ChanCloseConfirm to IBC-GO testing'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEX_7c", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Integration or e2e tests around custom params'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEYAGQ", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for '
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEYG0k", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Add consumer chain timeout e2e/integration tests'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEYIRI", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Build tags assigned incorrectly ("netgo ledger,") with Make 4.3+'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEaoT8", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for V8: Update Gaia roadmap'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEgnqs", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for CI settings prevent updates to older gaias'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEihMU", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Fast Node'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEap0Q", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for genesis incompatibility between versions'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEaqpY", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Unable to sign multisignature transaction'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEarDU", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Potential dead code'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEcyXw", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Add Hermes e2e tests'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEdD5Y", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for No guideline for QA process'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEe8kU", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for EPIC: Standardize QA processes for ICS repo'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEe8mU", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Add documentation explaining differences between consumer and democ consumer'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEfqCI", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Implement sovereign -> consumer chain changeover'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEfshM", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for MBT: Add soft opt-out'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgLdoVI", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Document precise cases when assigning a consumer key K is allowed'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEgmfw", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for '
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgOBbJo", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Opted in validators do not get jailed twice'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgN8unQ", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for panic: runtime error: invalid memory address or nil pointer dereference'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgIbgXY", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for unknown query path for `gaiad query interchain-accounts controller params`'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgOJu3o", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for '
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEgmx0", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for State sync update'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEgnYM", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Need Updated Query for Atom Node v15.1.0'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgN2LhI", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Unbonding pausing waits for uninvolved consumer chains'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgNwJR4", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Epochs: Testnet testing'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgM2Cgs", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Unable to use  REST Server  after upgrading to v15'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgMy6js", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Partial Set Security: Test on a testnet'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgMVpWY", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for '
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgLQNMs", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for '
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgLtA_U", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for QA plan is not up-to-date'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEWaaI", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Partial Set Security: Introduce integration & E2E tests'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgMjti4", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for `StopConsumerChainProposal` to unlock unbondings locked with `LockUnbondingOnTimeout`'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEiyJE", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Reformat transaction flags in E2E tests'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgGrz9w", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for GovPreventSpamDecorator is no longer needed'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgMTSrI", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for '
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgNdx6Q", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for After update to v15.1.0, node does not work, no logs'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgNnm4A", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for '
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgNdx-0", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for [Bug]: error when parsing blocks produced around v15 upgrade'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgNqvbU", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Improve coverage around starting/stopping/restarting'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEgmuE", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Document use/relevance of `Other code/resources/docs websites` in the Cosmos org'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgF61Ko", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Signaling proposal for enabling ICA Controller feature'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgG8qnU", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Update Issue Labelling to be consistent across repos and projects'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEh2x0", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Add migration for new ICS param (BlocksPerEpoch)'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgN98IY", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for '
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgN9g9o", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Atom Upgrade to v15.0.0 from v14.1.0 not working'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgNq7lM", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Update Cosmos network site with working RPC endpoints'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgFCzIU", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for add rate limits cf gov proposal'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgN_laA", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for enable & refactor e2e tests'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgKUFlM", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Add epochs to ICS protocol'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgLXQ08", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for enable the ICA controller on Gaia'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgNKyTs", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for docs: Gaia Docs Upgrade needs a facelift'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEhjQk", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Partial Set Security: Compute the Top N validators and opt them in'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgMVpMA", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for build: sign build artificats using Github Actions'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEifl4", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Partial Set Security: Construct and send the partial sets to the consumers'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgMVoyE", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for No query for oldest unconfirmed VSCPacket'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgI_sxw", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Key assignment adds iteration on `MsgCreateValidator`'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgEixf8", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for `consumer-opted-in-validators` query does not work'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgN7QmE", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for Update documentation about `DenomOwners` no longer being available'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgMT9OA", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for IBC Rate Limit integration '
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgNdgWQ", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

echo 'Updating story type for update docs after upgrading to cosmos-sdk v47 and ibc-go v7'
gh api graphql -f query='mutation { updateProjectV2ItemFieldValue(input: { projectId: "", itemId: "PVTI_lADOAAN9684AKm_5zgG8qcE", fieldId: "", value: { singleSelectOptionId: "" } }) { projectV2Item { id } } }'

