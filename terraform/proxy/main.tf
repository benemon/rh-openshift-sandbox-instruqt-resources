resource "template_dir" "proxy_config_templates" {
  source_dir      = "${path.module}/templates"
  destination_dir = "${path.module}/output"

  vars = {
    var_public_api_ip       = var.public_api_ip
    var_public_router_ip    = var.public_router_ip
    var_instruqt_sandbox_id = var.instruqt_sandbox_id
  }
}
