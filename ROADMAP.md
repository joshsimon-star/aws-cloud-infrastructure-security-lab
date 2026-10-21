
# Project Roadmap

## Phase 1: Core Project Setup — Completed

- [x] Create the GitHub repository.
- [x] Document the AWS network architecture.
- [x] Define the VPC, public subnet, private subnet, route tables, and Internet Gateway in Terraform.
- [x] Define baseline security groups.
- [x] Document security controls and known limitations.

## Phase 2: Python API and Containers — Completed

- [x] Create a Flask REST API.
- [x] Define Python dependencies.
- [x] Create a Dockerfile.
- [x] Add a `.dockerignore` file.
- [x] Build the Docker image in GitHub Actions.
- [x] Start the container and test the health endpoint.

## Phase 3: Continuous Integration — Completed

- [x] Add automated Terraform checks.
- [x] Add Python syntax and endpoint checks.
- [x] Add Docker image build checks.
- [x] Add a Docker container smoke test.
- [x] Document test results.

## Phase 4: Security and Infrastructure Improvements — Planned

- [ ] Review and tighten security group ingress and egress rules.
- [ ] Review Terraform configuration for security and maintainability.
- [ ] Add automated dependency vulnerability checks.
- [ ] Review container image security.
- [ ] Document threat scenarios, mitigations, and residual risks.
- [ ] Improve error handling and application logging where appropriate.

## Phase 5: AWS Deployment and Validation — Not Started

- [ ] Review potential AWS costs and deployment prerequisites.
- [ ] Deploy to an AWS test environment only when ready.
- [ ] Verify actual subnet routing and security group behavior.
- [ ] Test the application through an appropriately configured network path.
- [ ] Configure relevant AWS logging and monitoring.
- [ ] Document observed results and clean up resources after testing.

## Project Scope

The project currently demonstrates infrastructure documentation, Terraform configuration checks, a containerized Python API, and automated GitHub Actions tests.

AWS deployment and live infrastructure security testing have not been performed. Planned items will be marked complete only after they have actually been implemented and verified.
