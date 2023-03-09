## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0, < 2.0.0 |
| <a name="requirement_external"></a> [external](#requirement\_external) | >= 2.3.1, < 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_external"></a> [external](#provider\_external) | >= 2.3.1, < 3.0.0 |

## Resources

| Name | Type |
|------|------|
| [external_external.free_port](https://registry.terraform.io/providers/hashicorp/external/latest/docs/data-sources/external) | data source |
| [external_external.ssh_tunnel](https://registry.terraform.io/providers/hashicorp/external/latest/docs/data-sources/external) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | (Optional) If false, do nothing and return target host | `bool` | `true` | no |
| <a name="input_gateway_host"></a> [gateway\_host](#input\_gateway\_host) | (Optional) Name or IP of SSH gateway - empty string if no gateway (direct connection) | `any` | `""` | no |
| <a name="input_gateway_port"></a> [gateway\_port](#input\_gateway\_port) | (Optional) Gateway port | `number` | `22` | no |
| <a name="input_gateway_user"></a> [gateway\_user](#input\_gateway\_user) | (Optional) User to use on SSH gateway (default = empty string = current username) | `any` | `""` | no |
| <a name="input_local_host"></a> [local\_host](#input\_local\_host) | (Optional) Local host name or IP. Set only if you cannot use the '127.0.0.1' default value | `string` | `"127.0.0.1"` | no |
| <a name="input_local_port"></a> [local\_port](#input\_local\_port) | (Optional) Local port. (Defaults: 0 -> Random) | `number` | `0` | no |
| <a name="input_putin_khuylo"></a> [putin\_khuylo](#input\_putin\_khuylo) | (Optional) Do you agree that Putin doesn't respect Ukrainian sovereignty and territorial integrity? More info: https://en.wikipedia.org/wiki/Putin_khuylo! | `bool` | `true` | no |
| <a name="input_python_cmd"></a> [python\_cmd](#input\_python\_cmd) | (Optional) Command to run python | `string` | `"python"` | no |
| <a name="input_shell_cmd"></a> [shell\_cmd](#input\_shell\_cmd) | (Optional) Command to run a shell | `string` | `"bash"` | no |
| <a name="input_ssh_cmd"></a> [ssh\_cmd](#input\_ssh\_cmd) | (Optional) Shell command to use to start ssh client | `string` | `"ssh -o StrictHostKeyChecking=no"` | no |
| <a name="input_ssh_tunnel_check_sleep"></a> [ssh\_tunnel\_check\_sleep](#input\_ssh\_tunnel\_check\_sleep) | (Optional) extra time to wait for ssh tunnel to connect | `string` | `"0s"` | no |
| <a name="input_target_host"></a> [target\_host](#input\_target\_host) | (Required) The target host. Name will be resolved by gateway | `string` | n/a | yes |
| <a name="input_target_port"></a> [target\_port](#input\_target\_port) | (Required) Target port number | `number` | n/a | yes |
| <a name="input_timeout"></a> [timeout](#input\_timeout) | (Optional) Timeout value ensures tunnel won't remain open forever | `string` | `"30m"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_host"></a> [host](#output\_host) | Host to connect to |
| <a name="output_port"></a> [port](#output\_port) | Port number to connect to |
