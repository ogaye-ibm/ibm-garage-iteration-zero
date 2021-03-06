module "dev_software_olm_release" {
  source = "github.com/ogaye-ibm/garage-terraform-modules.git//self-managed/software/operator-lifecycle-manager?ref=v2.2.16"

  cluster_config_file      = module.dev_cluster.config_file_path
  cluster_version          = module.dev_cluster.version
  cluster_type             = var.cluster_type
}
