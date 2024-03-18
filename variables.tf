/*****************************
   Network Module Variables
*****************************/

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
variable "allow_all_firewall_name" {
   type = string
   description = "allow all firewall name"
}

/*******************************
   Web Server Module Variables
*******************************/

variable "web_server_name" {
  type = string
  description = "name of the web server"
}
variable "web_server_machine_type" {
  type = string
  description = "machine type of web server"
}
variable "web_server_zone" {
  type = string
  description = "zone of the web server"
}
variable "web_server_machine_image" {
  type = string
  description = "machine image of the web server"
}

/******************************
  App Server Module Variables
******************************/

variable "app_server_name" {
  type = string
  description = "name of the app server"
}
variable "app_server_machine_type" {
  type = string
  description = "machine type of app server"
}
variable "app_server_zone" {
  type = string
  description = "zone of the app server"
}
variable "app_server_machine_image" {
  type = string
  description = "machine image of the app server"
}

/*****************************
  DB Server Module Variables
*****************************/

variable "db_server_name" {
  type = string
  description = "name of the db server"
}
variable "db_machine_type" {
  type = string
  description = "machine type of db server"
}
variable "db_server_zone" {
  type = string
  description = "zone of the db server"
}
variable "db_server_machine_image" {
  type = string
  description = "machine image of the db server"
}

/***********************************
  Instance Groups Module Variables
***********************************/

variable "web_instance_group_name" {
  type = string
  description = "name of the web instance group"
}
variable "web_instance_group_zone" {
  type = string
  description = "zone of the web instance group"
}
variable "web_to_app_instance_group_name" {
  type = string
  description = "name of the app instance group"
}
variable "web_to_app_instance_group_zone" {
  type = string
  description = "zone of the app instance group"
}

/*********************************
  Load Balancer Module Variables
*********************************/

variable "web_health_check_name" {
  type = string
  description = "name of the health check of web server"
}
variable "web_backend_service_name" {
  type = string
  description = "name of the backend service of web server"
}
variable "web_backend_service_protocol" {
  type = string
  description = "protocol of the backend service of web sever"
}
variable "web_backend_service_port_name" {
  type = string
  description = "port name of the backend service of web server"
}
variable "web_url_map_name" {
  type = string
  description = "name of the url map of web server"
}
variable "web_target_proxy_name" {
  type = string
  description = "name of the target proxy of web server"
}
variable "web_forwarding_rule_name" {
  type = string
  description = "name of the forwarding rule for web server"
}
variable "web_forwarding_rule_port_range" {
  type = string
  description = "port range of forwarding rule for web server"
}
variable "web_to_app_health_check_name" {
  type = string
  description = "name of web to app health check name"
}
variable "web_to_app_health_check_region" {
  type = string
  description = "region of web to app health check region"
}
variable "web_to_app_backend_service_name" {
  type = string
  description = "name of web to app backend service"
}
variable "web_to_app_backend_service_region" {
  type = string
  description = "region of web to app backend service"
}
variable "web_to_app_backend_service_protocol" {
  type = string
  description = "protocol of web to app backend service"
}
variable "web_to_app_forwarding_rule_name" {
  type = string
  description = "name of web to app forwarding rule"
}
variable "web_to_app_forwarding_rule_region" {
  type = string
  description = "region of web to app forwarding rule"
}
variable "web_to_app_forwarding_rule_load_balancing_scheme" {
  type = string
  description = "load balancing scheme of web to app forwarding rule"
}
