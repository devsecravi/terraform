data "aws_ami" "joindevops" {
  most_recent = true
  owners      = ["358646809744"]

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}
