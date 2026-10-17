# AWS Cloud Security Validation Plan

## 1. Purpose

This document defines how the AWS Cloud Infrastructure Security Lab will be validated. The goal is to check network separation, access restrictions, logging, and security configuration.

## 2. Current Status

**Status:** Planned — not yet executed in AWS.

This project currently contains architecture and security documentation. No live AWS resources have been deployed, and no tests described below have been performed.

## 3. Planned Validation Tests

| Test ID | Area | Validation Activity | Expected Result | Status |
|---|---|---|---|---|
| NET-01 | Network | Review the VPC and subnet CIDR ranges | Address ranges are documented and do not overlap | Planned |
| NET-02 | Routing | Review public and private route tables | Only intended public resources have a route to the Internet Gateway | Planned |
| NET-03 | Security Groups | Review inbound and outbound rules | Rules allow only required traffic | Planned |
| IAM-01 | Access | Review planned IAM permissions | Permissions follow least privilege | Planned |
| LOG-01 | Logging | Review the CloudTrail logging plan | Required account activity logging is documented | Planned |
| DET-01 | Detection | Review the GuardDuty monitoring plan | Intended threat detection coverage is documented | Planned |
| WEB-01 | Web Security | Review the HTTPS and AWS WAF design | Web traffic protection requirements are documented | Planned |
| IaC-01 | Infrastructure as Code | Review planned Terraform configuration | Configuration can be checked before deployment | Planned |

## 4. Results Template

For each test, record:

- **Test ID:**
- **Date performed:**
- **Environment:**
- **Steps performed:**
- **Expected result:**
- **Actual result:**
- **Pass / Fail / Not tested:**
- **Evidence:**
- **Issue found:**
- **Remediation:**

Do not mark a test as passed unless it has actually been performed and the evidence supports the result.

## 5. Security and Cost Precautions

- Do not commit AWS credentials, access keys, passwords, or other secrets to GitHub.
- If AWS is used in the future, review potential charges before creating resources.
- Use a controlled test environment and remove resources when they are no longer needed.
- Do not test against systems or accounts without authorization.

## 6. Future Work

1. Review and improve the documented architecture.
2. Implement the network design using Terraform in a controlled environment.
3. Run the planned checks.
4. Record actual outcomes and evidence.
5. Document any findings and remediation.

## 7. Limitations

This plan is a proposed validation procedure, not proof of a secure deployment. All tests remain planned until performed.
