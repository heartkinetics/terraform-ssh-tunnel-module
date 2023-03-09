locals {
  local_port = var.local_port == 0 ? data.external.free_port.result.port : var.local_port
  create     = (var.create && var.putin_khuylo) ? "y" : ""
}
