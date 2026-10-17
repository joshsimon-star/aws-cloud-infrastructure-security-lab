# AWS Cloud Infrastructure Security Lab

## Overview

A cloud infrastructure design project demonstrating AWS networking fundamentals, network segmentation, routing, security controls, and threat modeling.

The project documents a proposed secure AWS network architecture and explains how its design can reduce unnecessary exposure and improve security.

**Status:** Architecture design and documentation completed. Live AWS deployment and validation are future work.

## Architecture

![AWS Cloud Security Architecture](aws-cloud-security-architecture.png)

The proposed architecture includes:

- An AWS Virtual Private Cloud (VPC).
- Separate public and private subnets.
- An Internet Gateway.
- Public and private route tables.
- Security group design.
- Example public-facing and internal EC2 resources.

## Technologies and Concepts

- Amazon Web Services (AWS)
- Amazon VPC and subnetting
- IPv4 CIDR addressing
- Route tables and Internet Gateways
- EC2 concepts
- Security groups
- IAM security principles
- CloudTrail, GuardDuty, and CloudWatch concepts
- GitHub documentation

## Project Documentation

- [Network Design](NETWORK-DESIGN.md) — VPC, subnets, routing, and security groups.
- [Threat Model](THREAT-MODEL.md) — potential threats, mitigations, and a proposed monitoring plan.
- [Architecture Diagram](aws-cloud-security-architecture.png) — visual overview of the proposed network.

## Security Design Decisions

- Separate public-facing resources from internal resources.
- Avoid direct internet exposure of private resources.
- Restrict inbound traffic to required ports and trusted sources.
- Apply least-privilege access principles.
- Plan for audit logging and threat monitoring.

## Validation Plan

The proposed validation work includes reviewing subnet associations, route table entries, security group rules, and access restrictions.

These checks have not yet been performed against a live AWS environment.

## Current Limitations

This is a design and documentation project. The architecture has not been deployed to AWS, and no live infrastructure tests or attack simulations have been performed.

## Future Improvements

- Deploy the architecture in a controlled AWS environment.
- Implement infrastructure using Terraform.
- Configure appropriate logging and monitoring.
- Test network access controls and document results.
- Add automation and security remediation where appropriate.

## Learning Outcomes

This project develops practical understanding of cloud network architecture, network segmentation, routing, security group design, threat modeling, and technical documentation.


