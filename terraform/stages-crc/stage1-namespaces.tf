module "dev_cluster_namespaces" {
  source = "github.com/ogaye-ibm/garage-terraform-modules.git//generic/cluster/namespaces?ref=v2.2.2"

  cluster_type             = module.dev_cluster.type
  cluster_config_file_path = module.dev_cluster.config_file_path
  tls_secret_name          = module.dev_cluster.tls_secret_name
  tools_namespace          = var.tools_namespace
  release_namespaces       = var.release_namespaces
}
