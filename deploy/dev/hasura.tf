resource "helm_release" "hasura" {
  name    = "hasura"
  chart   = "charts/hasura"
  timeout = 1200
  set {
    name  = "webhook_baseurl"
    value = base64encode(var.hasura_webhook_baseurl)
  }
  set {
    name  = "admin_secret"
    value = base64encode(var.hasura_admin_secret)
  }
  set {
    name  = "endpoint"
    value = base64encode(var.hasura_endpoint)
  }
  set {
    name = "jwt_secret"
    value = base64encode(jsonencode({
      "type": "HS256",
      "key": var.hasura_jwt_secret
    }))
  }
  set {
    name  = "database_url"
    value = base64encode(var.database_url)
  }
  set {
    name = "strapi_database_url"
    value = base64encode(var.strapi_database_url)
  }
  depends_on = [
    helm_release.postgres
  ]
}
