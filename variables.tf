
variable "create" {
  type        = bool
  description = "(Optional) If false, do nothing and return target host"
  default     = true
}

variable "python_cmd" {
  type        = string
  description = "(Optional) Command to run python"
  default     = "python"
}

variable "shell_cmd" {
  type        = string
  description = "(Optional) Command to run a shell"
  default     = "bash"
}

variable "ssh_cmd" {
  type        = string
  description = "(Optional) Shell command to use to start ssh client"
  default     = "ssh -o StrictHostKeyChecking=no"
}

variable "local_host" {
  type        = string
  description = "(Optional) Local host name or IP. Set only if you cannot use the '127.0.0.1' default value"
  default     = "127.0.0.1"
}

variable "local_port" {
  description = "(Optional) Local port. (Defaults: 0 -> Random)"
  type        = number
  default     = 0
}

variable "target_host" {
  type        = string
  description = "(Required) The target host. Name will be resolved by gateway"
}

variable "target_port" {
  type        = number
  description = "(Required) Target port number"
}

variable "gateway_host" {
  type        = any
  default     = ""
  description = "(Optional) Name or IP of SSH gateway - empty string if no gateway (direct connection)"
}

variable "gateway_user" {
  type        = any
  description = "(Optional) User to use on SSH gateway (default = empty string = current username)"
  default     = ""
}

variable "gateway_port" {
  type        = number
  description = "(Optional) Gateway port"
  default     = 22
}

variable "timeout" {
  type        = string
  description = "(Optional) Timeout value ensures tunnel won't remain open forever"
  default     = "30m"
}

variable "ssh_tunnel_check_sleep" {
  type        = string
  description = "(Optional) extra time to wait for ssh tunnel to connect"
  default     = "0s"
}

variable "putin_khuylo" {
  description = "(Optional) Do you agree that Putin doesn't respect Ukrainian sovereignty and territorial integrity? More info: https://en.wikipedia.org/wiki/Putin_khuylo!"
  type        = bool
  default     = true
}
