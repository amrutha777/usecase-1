variable "web-health-check-name" {
  type = string
  description = "name of the web-health-check"
}
variable "web-backend-service-name" {
  type = string
  description = "name of the web-backend-service"
}
variable "web-backend-service-protocol" {
  type = string
  description = "protocol of the web-backend-service"
}
variable "web-backend-service-port-name" {
  type = string
  description = "port name of the web-backend-service"
}
variable "web-instance-group" {
  type = string
  description = "name of web instance group"
}
variable "web-url-map-name" {
  type = string
  description = "name of the web-url-map"
}
variable "web-target-proxy-name" {
  type = string
  description = "name of the web-target-proxy"
}
variable "web-forwarding-rule-name" {
  type = string
  description = "name of the web-forwarding-rule"
}
variable "web-forwarding-rule-port_range" {
  type = string
  description = "port range of the web-forwarding-rule"
}
variable "web-to-app-health-check-name" {
  type = string
  description = "name of web to app health check"
}
variable "web-to-app-health-check-region" {
  type = string
  description = "region of web to app health check"
}
variable "web-to-app-backend-service-name" {
  type = string
  description = "name of web to app backend service"
}
variable "web-to-app-backend-service-region" {
  type = string
  description = "region of web to app backend service"
}
variable "web-to-app-backend-service-protocol" {
  type = string
  description = "protocol of web to app backend service"
}
variable "app-instance-group" {
  type = string
  description = "name of app instance group"
}
variable "web-to-app-forwarding-rule-name" {
  type = string
  description = "name of web to app forwarding rule"
}
variable "web-to-app-forwarding-rule-region" {
  type = string
  description = "region of web to app forwarding rule"
}
variable "web-to-app-forwarding-rule-load-balancing-scheme" {
  type = string
  description = "load balancing scheme of web to app forwarding rule"
}
variable "vpc-network" {
  type = string
  description = "name of vpc network"
}
variable "web-subnet" {
  type = string
  description = "name of web subnet"
}