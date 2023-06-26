variable "instance_names" {
  description = "List of instance names"
  type        = list(string)
  default     = ["ec2-nane-1", "ec2-nane-2"]
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t3.large"
}

variable "user_data" {
  description = "Can be used to pass base64-encoded binary data directly"
  type        = string
  default     = ""
}

variable "subnet_ids" {
  description = "The VPC Subnet IDs to launch in"
  type        = list(any)
}

variable "security_group_ids" {
  description = "List of security_group_ids"
  type        = list(any)
}

variable "root_volume_size" {
  description = "ec2 root volume size, The root block device is the block device that contains the operating system and boot files "
  type        = number
}

variable "root_volume_name" {
  description = "Name of the root volume"
  type        = string
  default     = "ad-tools-root-vol-1"
}

variable "create_ebs_block" {
  description = "Whether to create an additional EBS block device"
  type        = bool
  default     = false
}

variable "ebs_volume_size" {
  description = "ec2 ebs volume size, This is useful for attaching data volumes or additional storage to the instance."
  type        = number
  default     = 0
}

variable "ebs_block_device_name" {
  description = "Name of the ebs volume"
  type        = string
  default     = ""
}

variable "ebs_optimized" {
  description = "If true, the launched EC2 instance will be EBS-optimized"
  type        = bool
  default     = true
}

variable "environment" {
  description = "enviroment SIT/Prod"
  type        = string
  default     = ""
}

variable "iam_policies" {
  description = "List of IAM policy documents to attach to the role"
  type    = map(string)
  default = {}
}

variable "common_service_policy_arn" {
  description = "Arn for the common service policy"
  type        = list(string)
  default     = []
}

# variable "attach_common_service_policy_count" {
#   description = "attach Arn for the common service policy"
#   type        = number
# }

variable "keys_to_grant" {
  description = "List of kms keys to grant for role"
  type        = list(string)
  default     = []
}

variable "kms_key_id" {
  description = "kms key id used to encrypt the volumes"
  type = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
}

variable "workflow" {
  description = "Name of the workflow to use."
  type        = string
  default     = "otcgsit-pb"
}

variable "shared_services_account_number" {
  description = "the shared service account number"
  type = string
  default = ""
}

variable "security_services_account_number" {
  description = "the shared service account number"
  type = string
  default = ""
}