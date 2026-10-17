# AWS Cloud Infrastructure Security Lab — Threat Model

## 1. Purpose

This threat model identifies potential risks in the proposed AWS network architecture and describes defensive controls.

**Project status:** Design exercise only. The infrastructure has not been deployed, and no attacks or detections have been executed.

## 2. Assets to Protect

- Public-facing web application.
- Internal application resources.
- AWS network configuration.
- Administrative accounts and credentials.
- Application data and logs.

## 3. Threat 1: Unauthorized Internet Access

**Scenario:** An attacker attempts to connect to a service that should not be publicly accessible.

**Potential impact:**
- Unauthorized access to an application or server.
- Exposure of sensitive information.
- Disruption of services.

**Mitigations:**
- Keep internal resources in the private subnet.
- Restrict security group inbound rules to required ports and trusted sources.
- Avoid exposing administrative services directly to the internet.
- Review network access rules regularly.

**Proposed validation:** Review security group rules and verify that internal resources have no unintended public access.

## 4. Threat 2: Overly Permissive Network Rules

**Scenario:** A security group allows more inbound or outbound traffic than the application requires.

**Potential impact:**
- Increased attack surface.
- Unauthorized connections.
- Greater opportunity for an attacker to move between resources.

**Mitigations:**
- Apply least-privilege network rules.
- Permit only required protocols, ports, and sources.
- Reference trusted security groups where appropriate.
- Review and remove unused rules.

**Proposed validation:** Inspect each security group rule and document why it is required.

## 5. Threat 3: Compromised Credentials

**Scenario:** An attacker obtains an administrator's credentials or an exposed access key.

**Potential impact:**
- Unauthorized changes to cloud infrastructure.
- Exposure or deletion of data.
- Creation of unauthorized resources and unexpected costs.

**Mitigations:**
- Apply least-privilege IAM permissions.
- Enable multi-factor authentication for human users where appropriate.
- Avoid long-term access keys when temporary credentials are suitable.
- Never commit credentials to GitHub.
- Monitor account activity and investigate suspicious events.

**Proposed validation:** Review IAM permissions and check that the repository contains no secrets.

## 6. Monitoring and Detection Plan

If the design is implemented, consider:

- **AWS CloudTrail:** Records supported AWS account and API activity.
- **Amazon GuardDuty:** Helps detect certain threats using supported data sources.
- **Amazon CloudWatch:** Supports monitoring and alerting for configured logs and metrics.

These services are proposed controls. They have not been configured or tested for this project.

## 7. Risk Priorities

| Threat | Priority | Reason |
|---|---|---|
| Unauthorized internet access | High | Could expose resources or services |
| Overly permissive network rules | High | Expands the attack surface |
| Compromised credentials | High | Could enable unauthorized infrastructure changes |

These are preliminary design priorities, not measured risk scores.

## 8. Limitations

This is a conceptual threat model for a proposed architecture. No live AWS resources, attacks, detections, or remediation actions have been tested.

## 9. Future Improvements

- Deploy the architecture in a controlled AWS environment.
- Enable and validate appropriate audit logging.
- Test security group rules.
- Document test results and corrective actions.
- Review the design against relevant AWS security guidance.
