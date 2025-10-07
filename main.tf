# This is Terraform configuration file post few classes

provider "aws"{
region = var.environments[var.env].location
}
resource "aws_instance" "EC2"{
for_each = { for k, v in var.environments : k => v if k == var.env }
ami = var.instance_specifications.ami
instance_type = each.value.instance_type
subnet_id = var.instance_specifications.subnet
}
