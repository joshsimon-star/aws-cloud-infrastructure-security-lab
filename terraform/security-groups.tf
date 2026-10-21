
# Security group for a future public HTTPS endpoint
resource "aws_security_group" "public_web" {
  name        = "security-lab-public-web"
  description = "Allow HTTPS traffic to a future public web endpoint"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "HTTPS from the internet"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # SECURITY LIMITATION:
  # Allows all outbound IPv4 traffic to any destination.
  # This is broad access, not least privilege.
  # Before deployment, review required destinations and protocols
  # and restrict egress where practical.
  egress {
    description = "Outbound IPv4 traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  }

  tags = {
    Name = "security-lab-public-web"
  }
}

# Security group for a future private resource
resource "aws_security_group" "private_internal" {
  name        = "security-lab-private-internal"
  description = "No inbound traffic allowed until explicitly designed"
  vpc_id      = aws_vpc.main.id

  egress {
    description = "Outbound IPv4 traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "security-lab-private-internal"
  }
}
