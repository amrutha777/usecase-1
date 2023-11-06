variable "web-server-name" {
  type = string
  description = "web server name"
}
variable "machine-type" {
  type = string
  description = "specifying machine type"
}
variable "zone" {
  type = string
  description = "specifying zone"
}
variable "web-server-tag" {
  type = string
  description = "network tag for web sever"
}
variable "machine-image" {
  type = string
  description = "specifying image"
}
variable "vpc-name" {
  type = string
  description = "specifying vpc name"
}