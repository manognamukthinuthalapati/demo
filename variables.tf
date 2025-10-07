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
