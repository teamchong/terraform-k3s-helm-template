resource "helm_release" "strapi" {
  name    = "strapi"
  chart   = "charts/strapi"
  timeout = 1200
  set {
    name  = "postgres_password"
    value = base64encode(var.postgres_password)
  }
  set {
    name  = "strapi_public_url"
    value = base64encode(var.strapi_public_url)
  }
  depends_on = [
    helm_release.postgres
  ]
}