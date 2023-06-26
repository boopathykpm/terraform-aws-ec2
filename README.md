## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.66 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.66 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_ami.ubuntu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | ID of AMI to use for the instance | `string` | `""` | no |
| <a name="input_common_service_policy_arn"></a> [common\_service\_policy\_arn](#input\_common\_service\_policy\_arn) | Arn for the common service policy | `list(string)` | `[]` | no |
| <a name="input_create_ebs_block"></a> [create\_ebs\_block](#input\_create\_ebs\_block) | Whether to create an additional EBS block device | `bool` | `false` | no |
| <a name="input_ebs_block_device_name"></a> [ebs\_block\_device\_name](#input\_ebs\_block\_device\_name) | Name of the ebs volume | `string` | `""` | no |
| <a name="input_ebs_optimized"></a> [ebs\_optimized](#input\_ebs\_optimized) | If true, the launched EC2 instance will be EBS-optimized | `bool` | `true` | no |
| <a name="input_ebs_volume_size"></a> [ebs\_volume\_size](#input\_ebs\_volume\_size) | ec2 ebs volume size, This is useful for attaching data volumes or additional storage to the instance. | `number` | `0` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | enviroment SIT/Prod | `string` | `""` | no |
| <a name="input_iam_policies"></a> [iam\_policies](#input\_iam\_policies) | List of IAM policy documents to attach to the role | `map(string)` | `{}` | no |
| <a name="input_instance_names"></a> [instance\_names](#input\_instance\_names) | List of instance names | `list(string)` | <pre>[<br>  "ec2-nane-1",<br>  "ec2-nane-2"<br>]</pre> | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The type of instance to start | `string` | `"t3.large"` | no |
| <a name="input_keys_to_grant"></a> [keys\_to\_grant](#input\_keys\_to\_grant) | List of kms keys to grant for role | `list(string)` | `[]` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | kms key id used to encrypt the volumes | `string` | n/a | yes |
| <a name="input_root_volume_name"></a> [root\_volume\_name](#input\_root\_volume\_name) | Name of the root volume | `string` | `"ad-tools-root-vol-1"` | no |
| <a name="input_root_volume_size"></a> [root\_volume\_size](#input\_root\_volume\_size) | ec2 root volume size, The root block device is the block device that contains the operating system and boot files | `number` | n/a | yes |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | List of security\_group\_ids | `list(any)` | n/a | yes |
| <a name="input_security_services_account_number"></a> [security\_services\_account\_number](#input\_security\_services\_account\_number) | the shared service account number | `string` | `""` | no |
| <a name="input_shared_services_account_number"></a> [shared\_services\_account\_number](#input\_shared\_services\_account\_number) | the shared service account number | `string` | `""` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | The VPC Subnet IDs to launch in | `list(any)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource | `map(string)` | n/a | yes |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | Can be used to pass base64-encoded binary data directly | `string` | `""` | no |
| <a name="input_workflow"></a> [workflow](#input\_workflow) | Name of the workflow to use. | `string` | `"otcgsit-pb"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | AWS EC2 ARN |
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | n/a |
| <a name="output_public_dns"></a> [public\_dns](#output\_public\_dns) | AWS EC2 instance public DNS name |
