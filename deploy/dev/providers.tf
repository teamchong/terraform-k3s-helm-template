provider "helm" {
  kubernetes {
    config_path    = "~/.kube/config"
    config_context = "k3d-dev"
  }
}
provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "k3d-dev"
}