# NSO Version Validation Pipeline

Minimal CI pipeline validating Cisco NSO version before deployment.

## Objective

Ensure correct NSO runtime version in CI environment.

## Features

- Automated NSO version check
- Fail-fast validation
- CI integration (GitLab)
- Bash strict mode enabled

## Use Case

Enterprise CI/CD workflows where NSO services
must run on approved platform versions.

## Example

Pipeline fails if detected version differs from expected.
