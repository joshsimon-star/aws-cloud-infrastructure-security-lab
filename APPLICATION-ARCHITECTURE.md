
# Application Architecture

## Project Overview

This project demonstrates how a Python REST API can be packaged into a Docker container and how supporting AWS network infrastructure can be defined using Terraform.

The project is designed as a portfolio lab focused on cloud infrastructure, networking, automation, and security fundamentals.

## Application Components

### Python REST API

The API is built with Flask and provides:

- A home endpoint that returns API information.
- A health endpoint for basic availability checks.
- HTTP 404 responses for unknown routes.

### Docker

The API is packaged into a Docker image using the project's Dockerfile.

The container is configured to run as a non-root user and listen on port 5000.

### Automated Testing

GitHub Actions automates the following checks:

- Terraform formatting and configuration validation.
- Python syntax and API endpoint tests.
- Docker image build.
- Container startup and health endpoint smoke test.

## Proposed AWS Network Architecture

The Terraform configuration describes a VPC with a CIDR block of `10.0.0.0/16`.

The planned network includes:

- A public subnet for resources that require a public network path.
- A private subnet for resources that should not be directly accessible from the internet.
- An Internet Gateway for internet connectivity from appropriately routed public resources.
- Separate route tables for public and private subnets.
- Security groups to control permitted inbound and outbound traffic.

A public subnet route table includes a default route to the Internet Gateway. A private subnet does not become internet-accessible merely because an Internet Gateway exists.

## Proposed Application Placement

In a future deployment, the API could run on a private compute resource behind a public Application Load Balancer.

The load balancer would accept approved client traffic and forward requests to the API. Security group rules would restrict access to the API so that application traffic is accepted only from the load balancer.

This is a proposed design, not a currently deployed configuration. A production implementation would require additional infrastructure resources and testing.

## Security Considerations

- Run the application as a non-root user inside the container.
- Restrict inbound network traffic to required ports and trusted sources.
- Avoid committing credentials, API keys, or other secrets to GitHub.
- Review broad outbound security group rules before deployment.
- Use appropriate AWS identity and access management controls.
- Plan for centralized logging, monitoring, and security alerting.

## Current Limitations

- The Terraform configuration has not been deployed to AWS.
- The proposed load balancer and application hosting infrastructure have not been implemented or tested.
- The Docker image has been built and tested in GitHub Actions but has not been published to a container registry.
- Live AWS networking, access controls, monitoring, and security detections remain untested.

## Conclusion

This lab demonstrates infrastructure-as-code documentation, a containerized Python API, and automated CI checks. Further work would be needed to deploy the architecture securely and verify its behavior in a live AWS environment.
