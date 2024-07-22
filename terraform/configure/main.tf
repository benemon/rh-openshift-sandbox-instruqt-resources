resource "template_dir" "cluster_config_templates" {
  source_dir      = "${path.module}/templates"
  destination_dir = "${path.module}/output"

  vars = {
    var_arm_subscription_id = var.arm_subscription_id
    var_arm_tenant_id       = var.arm_tenant_id
    var_arm_client_id       = var.arm_client_id
    var_arm_client_secret   = var.arm_client_secret
    var_cluster_name        = var.cluster_name
    var_base_domain         = var.base_domain
    var_region              = var.region
    var_resource_group      = var.resource_group
    var_pull_secret         = base64decode(var.pull_secret)
    var_ssh_key             = file("~/.ssh/id_rsa.pub")
  }
}
