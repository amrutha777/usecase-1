/*****************
  Network Module
*****************/
vpc_name = "vpc-for-3tier"
web_subnet_name = "web-subnet"
ip_range_for_web = "10.2.0.0/16"
subnet_region_for_web = "us-central1"
app_subnet_name = "app-subnet"
ip-range_for_app = "10.3.0.0/16"
subnet_region_for_app = "asia-east1"
db_subnet_name = "db-subnet"
ip_range_for_db = "10.4.0.0/16"
subnet_region_for_db = "asia-east2"
web_firewall_name = "web-firewall"
web_firewall_tag = "web"
app_firewall_name = "app-firewall"
app_firewall_tag = "app"
db_firewall_name = "db-firewall"
db_firewall_tag = "db"

/*******************************
   Web Server Module Variables 
*******************************/

web_server_name = "web-server-vm"
web_server_machine_type = "e2-medium"
web_server_zone = "us-central1-a"
web_server_tag = "web"
web_server_machine_image = "debian-cloud/debian-10"

/*******************************
  App Server Module Variables
*******************************/

app_server_name = "app-server-vm"
app_server_machine_type = "e2-medium"
app_server_zone = "asia-east1-b"
app_server_tag = "app"
app_server_machine_image = "debian-cloud/debian-10"

/*******************************
   DB Server Module Variables
*******************************/

db_server_name = "db-server-vm"
db_machine_type = "e2-medium"
db_server_zone = "asia-east2-b"
db_server_tag = "db"
db_server_machine_image = "debian-cloud/debian-10"

/***********************************
  Instance Groups Module Variables
***********************************/

web_instance_group_name = "web-instance-group"
web_instance_group_zone = "us-central1-a"
app_instance_group_name = "app-instance-group"
app_instance_group_zone = "asia-east1-b"
db_instance_group_name = "db-instance-group"
db_instance_group_zone = "asia-east2-b"

/*********************************
  Load Balancer Module Variables
*********************************/
  
web_health_check_name = "web-health-check"
web_backend_service_name = "web-backend-service"
web_backend_service_protocol = "HTTP"
web_backend_service_port_name = "http"
web_url_map_name = "web-url-map"
web_target_proxy_name = "web-target-proxy"
web_forwarding_rule_name = "web-forwarding-rule"
web_forwarding_rule_port_range = "80"
web_forwarding_rule_ip_protocol = "TCP"