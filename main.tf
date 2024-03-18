/********************
  Network Module
********************/

module "Network" {
  source                  = "./Network"
  vpc-name                = var.vpc_name
  web-subnet-name         = var.web_subnet_name
  ip-range-for-web        = var.ip_range_for_web
  subnet-region-for-web   = var.subnet_region_for_web
  app-subnet-name         = var.app_subnet_name
  ip-range-for-app        = var.ip-range_for_app
  subnet-region-for-app   = var.subnet_region_for_app
  db-subnet-name          = var.db_subnet_name
  ip-range-for-db         = var.ip_range_for_db
  subnet-region-for-db    = var.subnet_region_for_db
  allow-all-firewall-name = var.allow_all_firewall_name
 /* web-firewall-name     = var.web_firewall_name
  app-firewall-name       = var.app_firewall_name
  db-firewall-name        = var.db_firewall_name
  ssh-firewall-name       = var.ssh_firewall_name
  hc-firewall-name        = var.hc_firewall_name */
}

/**********************
   Web Server Module
**********************/

module "Web_Server" {
  source          = "./WebServer"
  web-server-name = var.web_server_name
  machine-type    = var.web_server_machine_type
  zone            = var.web_server_zone
  machine-image   = var.web_server_machine_image 
  vpc-network     = module.Network.vpc_name
  web-subnet      = module.Network.web_subnet
}

/********************
  App Server Module
********************/

module "App_Server" {
  source          = "./AppServer"
  app-server-name = var.app_server_name
  machine-type    = var.app_server_machine_type
  zone            = var.app_server_zone
  machine-image   = var.app_server_machine_image
  vpc-network     = module.Network.vpc_name
  app-subnet      = module.Network.app_subnet 
}

/*********************
  DB Server Module
*********************/

module "Db-Server" {
  source         = "./DbServer"
  db-server-name = var.db_server_name
  machine-type   = var.db_machine_type
  zone           = var.db_server_zone
  machine-image  = var.db_server_machine_image 
  vpc-network    = module.Network.vpc_name
  db-subnet      = module.Network.db_subnet
}

/*************************
  Instance Groups Module
*************************/

module "Instance_Groups" {
  source                         = "./InstanceGroups"
  web-instance-group-name        = var.web_instance_group_name
  web-instance-group-zone        = var.web_instance_group_zone
  web-server                     = module.Web_Server.web_server
  web-to-app-instance-group-name = var.web_to_app_instance_group_name
  web-to-app-instance-group-zone = var.web_to_app_instance_group_zone
  app-server                     = module.App_Server.app_server
}

/***********************
  Load Balancer Module
***********************/

module "Load_Balancer" {
  source                                           = "./LoadBalancer"
  web-health-check-name                            = var.web_health_check_name
  web-backend-service-name                         = var.web_backend_service_name
  web-backend-service-protocol                     = var.web_backend_service_protocol
  web-backend-service-port-name                    = var.web_backend_service_port_name
  web-instance-group                               = module.Instance_Groups.web_instance_group
  web-url-map-name                                 = var.web_url_map_name
  web-target-proxy-name                            = var.web_target_proxy_name
  web-forwarding-rule-name                         = var.web_forwarding_rule_name
  web-forwarding-rule-port_range                   = var.web_forwarding_rule_port_range
  web-to-app-health-check-name                     = var.web_to_app_health_check_name
  web-to-app-health-check-region                   = var.web_to_app_health_check_region
  web-to-app-backend-service-name                  = var.web_to_app_backend_service_name
  web-to-app-backend-service-region                = var.web_to_app_backend_service_region
  web-to-app-backend-service-protocol              = var.web_to_app_backend_service_protocol
  app-instance-group                               = module.Instance_Groups.app_instance_group
  web-to-app-forwarding-rule-name                  = var.web_to_app_forwarding_rule_name
  web-to-app-forwarding-rule-region                = var.web_to_app_forwarding_rule_region
  web-to-app-forwarding-rule-load-balancing-scheme = var.web_to_app_forwarding_rule_load_balancing_scheme
  vpc-network                                      = module.Network.vpc_name
  web-subnet                                       = module.Network.web_subnet
}
