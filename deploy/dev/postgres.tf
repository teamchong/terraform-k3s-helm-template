resource "helm_release" "postgres" {
  name    = "postgres"
  chart   = "charts/postgres"
  timeout = 1200
  set {
    name  = "postgres_password"
    value = base64encode(var.postgres_password)
  }
}
