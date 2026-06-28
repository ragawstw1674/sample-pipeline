variable "region" {
  type        = string
  description = "AWS Region"
}

variable "instance_name" {
  type        = string
  description = "EC2 Instance Name"
}

variable "instance_type" {
  type        = string
  description = "EC2 Instance Type"
}

variable "ami_id" {
  type        = string
  description = "AMI ID"
}

variable "subnet_id" {
  type        = string
}

variable "security_group_ids" {
  type = list(string)
}

variable "key_name" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}