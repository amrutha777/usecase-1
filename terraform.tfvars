/*****************
  Network Module
*****************/
vpc_name                = "vpc-for-3tier"
web_subnet_name         = "web-subnet"
ip_range_for_web        = "10.2.0.0/16"
subnet_region_for_web   = "us-central1"
app_subnet_name         = "app-subnet"
ip-range_for_app        = "10.3.0.0/16"
subnet_region_for_app   = "us-central1"
db_subnet_name          = "db-subnet"
ip_range_for_db         = "10.4.0.0/16"
subnet_region_for_db    = "us-central1"
allow_all_firewall_name = "allow-all-firewall"

/*******************************
   Web Server Module Variables 
*******************************/

web_server_name          = "web-server-vm"
web_server_machine_type  = "e2-medium"
web_server_zone          = "us-central1-a"
web_server_machine_image = "ubuntu-os-cloud/ubuntu-2004-lts"

/*******************************
  App Server Module Variables
*******************************/

app_server_name          = "app-server-vm"
app_server_machine_type  = "e2-medium"
app_server_zone          = "us-central1-b"
app_server_machine_image = "ubuntu-os-cloud/ubuntu-2004-lts"

/*******************************
   DB Server Module Variables
*******************************/

db_server_name          = "db-server-vm"
db_machine_type         = "e2-medium"
db_server_zone          = "us-central1-f"
db_server_machine_image = "ubuntu-os-cloud/ubuntu-2004-lts"

/***********************************
  Instance Groups Module Variables
***********************************/

web_instance_group_name        = "web-instance-group"
web_instance_group_zone        = "us-central1-a"
web_to_app_instance_group_name = "web-to-app-instance-group"
web_to_app_instance_group_zone = "us-central1-b"

/*********************************
  Load Balancer Module Variables
*********************************/
  
web_health_check_name                            = "web-health-check"
web_backend_service_name                         = "web-backend-service"
web_backend_service_protocol                     = "HTTP"
web_backend_service_port_name                    = "http"
web_url_map_name                                 = "web-url-map"
web_target_proxy_name                            = "web-target-http-proxy"
web_forwarding_rule_name                         = "web-forwarding-rule"
web_forwarding_rule_port_range                   = "80"
web_to_app_health_check_name                     = "web-to-app-health-check"
web_to_app_health_check_region                   = "us-central1"
web_to_app_backend_service_name                  = "web-to-app-backend-service"
web_to_app_backend_service_region                = "us-central1"
web_to_app_backend_service_protocol              = "TCP"
web_to_app_forwarding_rule_name                  = "web-to-app-forwarding-rule"
web_to_app_forwarding_rule_region                = "us-central1"
web_to_app_forwarding_rule_load_balancing_scheme = "INTERNAL"
