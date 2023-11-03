variable "vpc-name" {
  type = string
  description = "vpc name"
}
variable "web-subnet-name" {
  type = string
  description = "subnet name for web server"
}
variable "ip-range-for-web" {
  type = string
  description = "ip range for web server"
}
variable "subnet-region-for-web" {
  type = string
  description = "region for web server"
}
variable "app-subnet-name" {
  type = string
  description = "subnet name for app server"
}
variable "ip-range-for-app" {
  type = string
  description = "ip range for app server"
}
variable "subnet-region-for-app" {
  type = string
  description = "region for app server"
}
variable "db-subnet-name" {
  type = string
  description = "subnet name for db server"
}
variable "ip-range-for-db" {
  type = string
  description = "ip range for db server"
}
variable "subnet-region-for-db" {
  type = string
  description = "region for db server"
}
variable "web-firewall-name" {
  type = string
  description = "firewall name for web server"
}
variable "web-firewall-tag" {
  type = string
  description = "tag for web server"
}
variable "app-firewall-name" {
  type = string
  description = "firewall name for app server"
}
variable "app-firewall-tag" {
  type = string
  description = "tag for app server"
}
variable "web_vm_internal_ip" {
  type = string
  description = "internal ip of web vm"
}
variable "db-firewall-name" {
  type = string
  description = "firewall name for db server"
}
variable "db-firewall-tag" {
  type = string
  description = "tag for db server"
}
variable "app-vm-internal-ip" {
  type = string
  description = "internal ip of app vm"
}