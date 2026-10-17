# AWS Cloud Security Controls Checklist

## Project Status

This document describes the security controls planned for the AWS Cloud Infrastructure Security Lab. The current project is an architecture and documentation exercise. AWS resources have not yet been deployed, and the controls below have not been tested in a live AWS environment.

## 1. Network Security

- [ ] Use a dedicated Virtual Private Cloud (VPC) with a documented CIDR range.
- [ ] Separate public-facing resources from internal resources using subnets.
- [ ] Associate route tables with the appropriate subnets.
- [ ] Use an Internet Gateway only where public connectivity is required.
- [ ] Avoid direct internet routes for private subnets.
- [ ] Restrict inbound and outbound traffic using least-privilege security group rules.
- [ ] Allow administrative access only through an approved, restricted method.

## 2. Identity and Access Management

- [ ] Follow the principle of least privilege for AWS IAM permissions.
- [ ] Avoid using the AWS root account for routine administration.
- [ ] Enable multi-factor authentication (MFA) for privileged accounts.
- [ ] Avoid hardcoding credentials, access keys, or secrets in source code.
- [ ] Review permissions periodically and remove unnecessary access.

## 3. Logging and Monitoring

- [ ] Plan to enable AWS CloudTrail for account activity logging.
- [ ] Define how logs will be protected from unauthorized changes.
- [ ] Plan to use Amazon GuardDuty for supported threat detections.
- [ ] Define alerts for suspicious activity and unexpected configuration changes.
- [ ] Document how security alerts would be investigated and handled.

## 4. Web and Application Protection

- [ ] Place public web services behind an appropriate entry point.
- [ ] Evaluate AWS WAF for web application filtering where applicable.
- [ ] Require HTTPS for web traffic.
- [ ] Avoid exposing internal application services directly to the internet.
- [ ] Document application error handling and security logging requirements.

## 5. Infrastructure as Code

- [ ] Plan to define infrastructure using Terraform.
- [ ] Review planned changes before applying infrastructure updates.
- [ ] Scan infrastructure configuration for common security misconfigurations.
- [ ] Avoid storing secrets in GitHub.
- [ ] Document how changes can be reviewed, tested, and rolled back.

## 6. Validation Plan

When a test environment is available, validate the design by:

1. Reviewing security group rules for unnecessary access.
2. Confirming private subnets have no unintended direct internet route.
3. Checking that privileged access follows the documented IAM policy.
4. Verifying that expected logging and monitoring are enabled.
5. Recording test results, findings, and remediation steps.

## 7. Current Limitations

This checklist describes planned controls, not verified implementation. No live AWS security tests, attack simulations, detections, or automated remediation have been performed as part of the current documentation-only stage.

## 8. Future Improvements

- Implement the network design in a controlled AWS test environment.
- Add Terraform configuration and validation.
- Test security group and routing behavior.
- Configure and verify logging and threat detection.
- Document evidence and results for each completed test.
