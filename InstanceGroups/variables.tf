variable "web-instance-group-name" {
  type = string
  description = "name of the web instance"
}
variable "web-instance-group-zone" {
  type = string
  description = "zone of the web instance"
}
variable "web-server" {
  type = string
  description = "name of the web server"
}
variable "web-to-app-instance-group-name" {
  type = string
  description = "name of the app instance"
}
variable "web-to-app-instance-group-zone" {
  type = string
  description = "zone of the app instance"
}
variable "app-server" {
  type = string
  description = "name of the app server"
}