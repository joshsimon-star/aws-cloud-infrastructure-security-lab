# AWS Cloud Infrastructure Security Lab — Network Design

## 1. Overview

This document describes a proposed AWS network architecture designed to demonstrate network segmentation, routing, and security fundamentals.

**Project status:** Architecture design and documentation. The infrastructure has not been deployed to AWS.

## 2. Virtual Private Cloud (VPC)

The proposed VPC uses the IPv4 CIDR block `10.0.0.0/16`.

A VPC provides an isolated virtual network for AWS resources. The address range allows smaller subnet ranges to be allocated within the network.

## 3. Subnet Design

### Public Subnet

- CIDR block: `10.0.1.0/24`
- Intended purpose: Hosting a public-facing application entry point.
- Internet access: Designed to use a route to an Internet Gateway.

### Private Subnet

- CIDR block: `10.0.2.0/24`
- Intended purpose: Hosting internal application resources.
- Internet access: No direct route to the Internet Gateway is planned.

Separating public-facing and internal resources reduces unnecessary exposure to the internet.

## 4. Internet Gateway and Routing

An Internet Gateway connects a VPC to the internet when routing and other required configurations are in place.

The proposed public route table includes this default route:

- Destination: `0.0.0.0/0`
- Target: Internet Gateway

The public subnet must be associated with this route table for the route to apply to resources in that subnet.

The private subnet uses a separate route table without a direct Internet Gateway route. Outbound internet access, if required, would need a separately designed solution, such as a NAT Gateway.

## 5. Security Groups

Security groups act as virtual firewalls associated with AWS resources.

### Public-facing resources

- Allow HTTPS traffic on TCP port 443 only from intended sources.
- Avoid unnecessary inbound ports.
- Permit only the traffic required for the application.

### Private resources

- Allow only required application or administrative traffic.
- Restrict inbound access to trusted sources and appropriate security groups.
- Avoid direct public exposure.

Security groups are associated with resources, not directly with subnets.

## 6. Example Resources

The architecture diagram includes two proposed EC2 instances:

- A public-facing web server.
- An internal server in the private subnet.

These are illustrative resources only. No EC2 instances have been launched.

## 7. Security Considerations

- Apply least-privilege access.
- Keep internal resources private.
- Restrict inbound traffic to necessary sources and ports.
- Review route tables and security group rules.
- Monitor cloud activity when the design is implemented.
- Never commit AWS access keys, passwords, or other secrets to GitHub.

## 8. Validation Plan

If the architecture is deployed in a future phase, validation should include:

1. Confirming the VPC and subnet CIDR ranges.
2. Checking subnet-to-route-table associations.
3. Verifying the public default route targets the Internet Gateway.
4. Confirming that the private route table has no direct Internet Gateway route.
5. Reviewing security group rules.
6. Testing permitted and denied network access.

## 9. Current Limitations

This project currently documents a proposed architecture. It has not been deployed or tested in a live AWS environment. The design and validation plan should be reviewed before production use.

## 10. Related Artifact

See `aws-cloud-security-architecture.png` for the network architecture diagram.
