# Terraform — AWS Cloud Infrastructure Security Lab

## Purpose

This directory contains Terraform configuration for the proposed AWS network architecture.

## Files

- `main.tf` — defines the VPC, public and private subnets, Internet Gateway, route tables, and route table associations.
- `outputs.tf` — defines outputs for the VPC and subnet information.
- `security-groups.tf` — defines initial security groups for a potential public HTTPS endpoint and a private resource.

## Network Design

- VPC CIDR: `10.0.0.0/16`
- Public subnet CIDR: `10.0.1.0/24`
- Private subnet CIDR: `10.0.2.0/24`
- AWS region configured in the provider: `us-east-1`

## Validation Plan

Before any deployment, the configuration should be checked for:

1. Valid Terraform syntax and formatting.
2. Provider and resource configuration.
3. Network CIDR consistency.
4. Route table associations and intended internet access.
5. Security group ingress and egress rules.
6. Potential cost and security implications.

## Current Status

The configuration has been written and saved in GitHub but has not yet been validated by running Terraform. No AWS resources have been deployed by this project.

## Safety

- Never commit AWS credentials, access keys, or secrets.
- Do not run `terraform apply` without reviewing the proposed changes.
- Review AWS costs and permissions before using a real account.
- Use a controlled test environment for future deployment and validation.
Known Security Limitation: Outbound Traffic

Both security groups currently allow all outbound IPv4 traffic to any destination, port, and protocol. This is a broad baseline configuration and may increase risk if a resource is compromised.

A future improvement is to review application requirements and restrict outbound traffic to necessary destinations, ports, and protocols where practical. Required DNS and application connectivity must be considered before narrowing these rules.

Status: This is a documented design limitation identified during visual code review. Terraform has not been run for validation, and no AWS resources have been deployed or tested.
## Known Security Limitation: Outbound Traffic

Both security groups currently allow all outbound IPv4 traffic to any destination, port, and protocol. This is a broad baseline configuration and may increase risk if a resource is compromised.

A future improvement is to review application requirements and restrict outbound traffic to necessary destinations, ports, and protocols where practical. Required DNS and application connectivity must be considered before narrowing these rules.

**Status:** This is a documented design limitation identified during visual code review. Terraform has not been run for validation, and no AWS resources have been deployed or tested.
