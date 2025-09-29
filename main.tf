# This is Terraform configuration file post few classes
variable "environments" {
 description = "Define all environments"
  type = map(object({
    instance_type = string
    location      = string
  }))
}
variable "env"{
description = "Environment to create/destroy (dev/prod/qa)"
  type        = string
}
variable "instance_specifications"{
 description = "Instance specifications (AMI & subnet)"
  type = object({
    ami    = string
    subnet = string
  })
}
provider "aws"{
region = var.environments[var.env].location
}
resource "aws_instance" "EC2"{
for_each = { for k, v in var.environments : k => v if k == var.env }
ami = var.instance_specifications.ami
instance_type = each.value.instance_type
subnet_id = var.instance_specifications.subnet
}
