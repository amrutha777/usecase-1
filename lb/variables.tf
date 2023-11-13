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
variable "web-forwarding-rule-ip-protocol" {
  type = string
  description = "ip protocol of the web-forwarding-rule"
}