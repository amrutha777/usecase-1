/********************
  Network Module
********************/

module "Network" {
  source = "./Network"
  vpc-name = var.vpc_name
  web-subnet-name = var.web_subnet_name
  ip-range-for-web = var.ip_range_for_web
  subnet-region-for-web = var.subnet_region_for_web
  app-subnet-name = var.app_subnet_name
  ip-range-for-app = var.ip-range_for_app
  subnet-region-for-app = var.subnet_region_for_app
  db-subnet-name = var.db_subnet_name
  ip-range-for-db = var.ip_range_for_db
  subnet-region-for-db = var.subnet_region_for_db
  web-firewall-name = var.web_firewall_name
  web-firewall-tag = var.web_firewall_tag
  app-firewall-name = var.app_firewall_name
  app-firewall-tag = var.app_firewall_tag
  db-firewall-name = var.db_firewall_name
  db-firewall-tag = var.db_firewall_tag
}

/**********************
   Web Server Module
**********************/

module "Web_Server" {
  source = "./Web Server"
  web-server-name = var.web_server_name
  machine-type = var.web_server_machine_type
  zone = var.web_server_zone
  web-server-tag = var.web_server_tag
  machine-image  = var.web_server_machine_image 
}

/********************
  App Server Module
********************/

module "app_server" {
  source = "./App Server"
  app-server-name = var.app_server_name
  machine-type = var.app_server_machine_type
  zone = var.app_server_zone
  app-server-tag = var.app_server_tag
  machine-image = var.app_server_machine_image  
}

/*********************
  DB Server Module
*********************/

module "db-server-name" {
  source = "./db Server"
  db-server-name = var.db_server_name
  machine-type = var.db_machine_type
  zone = var.db_server_zone
  db-server-tag = var.db_server_tag
  machine-image = var.db_server_machine_image 
}

/*************************
  Instance Groups Module
*************************/

module "instance_groups" {
  source = "./Instance groups"
  web-instance-group-name = var.web_instance_group_name
  web-instance-group-zone = var.web_instance_group_zone
  app-instance-group-name = var.app_instance_group_name
  app-instance-group-zone = var.app_instance_group_zone
  db-instance-group-name = var.db_instance_group_name
  db-instance-group-zone = var.db_instance_group_zone
}

/***********************
  Load Balancer Module
***********************/

module "load_balancer" {
  source = "./lb"
  web-health-check-name = var.web_health_check_name
  web-backend-service-name = var.web_backend_service_name
  web-backend-service-protocol var.web_backend_service_protocol
  web-backend-service-port-name = var.web_backend_service_port_name
  web-url-map-name = var.web_url_map_name
  web-target-proxy-name = var.web_target_proxy_name
  web-forwarding-rule-name = var.web_forwarding_rule_name
  web-forwarding-rule-port_range = var.web_forwarding_rule_port_range
  web-forwarding-rule-ip-protocol = var.web_forwarding_rule_ip_protocol
}