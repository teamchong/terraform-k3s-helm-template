variable "hasura_webhook_baseurl" {
  type    = string
  default = "http://localhost:3000"
}
variable "hasura_admin_secret" {
  type    = string
  default = "notsosecret"
}
variable "hasura_endpoint" {
  type    = string
  default = "http://hasura.localhost"
}
variable "hasura_jwt_secret" {
  type    = string
  default = "verysecretverysecretverysecretverysecretverysecretverysecretverysecret"
}
variable "database_url" {
  type    = string
  default = "postgres://postgres:postgrespassword@postgres:5432/postgres"
}
variable "strapi_database_url" {
  type    = string
  default = "postgres://postgres:postgrespassword@postgres:5432/strapi"
}
variable "kratos_secret" {
  type    = string
  default = "verysecret4kratosverysecret4kratosverysecret4kratos"
}
variable "kratos_return_url" {
  type    = string
  default = "http://localhost:3000"
}
variable "kratos_logout_return_url" {
  type    = string
  default = "http://localhost:3000"
}
variable "kratos_smtp_connection_uri" {
  type    = string
  default = "smtp://YXBpa2V5:U0cuRWh1cm9KUFJSMmVjYmtNVGNYS21fUS5oc0lDNEJpSnRnQS1PTVM2NTFUT3ZZUndzY0c0c1docDNncEk0WDRrSDdR@smtp.sendgrid.net:25"
}
variable "kratos_from_name" {
  type    = string
  default = "hkmetaso"
}
variable "postgres_password" {
  type    = string
  default = "postgrespassword"
}
variable "strapi_public_url" {
  type = string
  default = "http://cms.localhost:8080"
}