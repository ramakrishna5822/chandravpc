resource "aws_security_group" "sg" {
    vpc_id = aws_vpc.test.id
    name = "chandra-sg"
    description = "allow all rules"
    tags = {
        Name = "chandra-security-group"
    }
  ingress {
    to_port = "0"
    from_port = "0"
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    to_port = "0"
    from_port = "0"
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}