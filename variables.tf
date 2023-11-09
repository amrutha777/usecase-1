variable "vpc_name" {
  type = string
  description = "name of the vpc"
}
variable "web_subnet_name" {
  type = string
  description = "name of the subnet for web server"
}
variable "ip_range_for_web" {
  type = string
  description = "ip range of the web server"
}
variable "subnet_region_for_web" {
  type = string
  description = "region of the web server"
}
variable "app_subnet_name" {
  type = string
  description = "name of the subnet for app server"
}
variable "ip-range_for_app" {
  type = string
  description = "ip range of the app server"
}
variable "subnet_region_for_app" {
  type = string
  description = "region of the app server"
}
variable "db_subnet_name" {
  type = string
  description = "name of the subnet for db server"
}
variable "ip_range_for_db" {
  type = string
  description = "ip range of the db server"
}
variable "subnet_region_for_db" {
  type = string
  description = "region of the db server"
}
variable "web_firewall_name" {
  type = string
  description = "name of the firewall for web server"
}
variable "web_firewall_tag" {
  type = string
  description = "tag for the web server"
}
variable "app_firewall_name" {
  type = string
  description = "name of the firewall for app server"
}
variable "app_firewall_tag" {
  type = string
  description = "tag for the app server"
}
variable "db_firewall_name" {
  type = string
  description = "name of the firewall for db server"
}
variable "db_firewall_tag" {
  type = string
  description = "tag for the db server"
}