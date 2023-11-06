variable "app-server-name" {
  type = string
  description = "app server name"
}
variable "machine-type" {
  type = string
  description = "specifying machine type"
}
variable "zone" {
  type = string
  description = "specifying zone"
}
variable "app-server-tag" {
  type = string
  description = "specifying tags for app server"
}
variable "machine-image" {
  type = string
  description = "specifying image"
}
variable "vpc-name" {
  type = string
  description = "specifying vpc name"
}