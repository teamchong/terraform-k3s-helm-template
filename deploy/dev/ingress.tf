resource "kubernetes_ingress_v1" "ingress" {
  metadata {
    name = "ingress"
    annotations = {
      "ingress.kubernetes.io/ssl-redirect" = "false"
    }
  }

  spec {
    rule {
      host = "api.localhost"
      http {
        path {
          path = "/"
          path_type = "Prefix"
          backend {
            service {
              name = "hasura"
              port {
                number = 8080
              }
            }
          }
        }
      }
    }
    rule {
      host = "cms.localhost"
      http {
        path {
          path = "/"
          path_type = "Prefix"
          backend {
            service {
              name = "strapi"
              port {
                number = 1337
              }
            }
          }
        }
      }
    }
  }
  depends_on = [
    helm_release.postgres,
    helm_release.hasura,
    helm_release.strapi
  ]
}