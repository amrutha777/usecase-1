/***************************************
  External Load balancer for web server
****************************************/

/*********************************
  health check for the web server 
**********************************/

resource "google_compute_http_health_check" "web-health-check" {
  name               = var.web-health-check-name
  request_path       = "/"
  port               = 80
  check_interval_sec = 60
  timeout_sec        = 60
}

/*************************************
  backend service for the web server
*************************************/


resource "google_compute_backend_service" "web-backend-service" {
  name                    = var.web-backend-service-name
  protocol                = var.web-backend-service-protocol
  port_name               = var.web-backend-service-port-name
  timeout_sec             = 30

  backend {
    group                 = var.web-instance-group
  }

  health_checks           = [google_compute_http_health_check.web-health-check.self_link]
}

/************************
  url map for web server
************************/


  resource "google_compute_url_map" "web-url-map" {
  name            = var.web-url-map-name
  default_service = google_compute_backend_service.web-backend-service.self_link
}

/**********************************
  target HTTP proxy for web server
***********************************/

resource "google_compute_target_http_proxy" "web-target-proxy" {
  name               = var.web-target-proxy-name
  url_map            = google_compute_url_map.web-url-map.self_link
 
}

/***************************************
  global forwarding rule for web server
****************************************/

resource "google_compute_global_forwarding_rule" "web-forwarding-rule" {
  name       = var.web-forwarding-rule-name
  target     = google_compute_target_http_proxy.web-target-proxy.self_link
  port_range = var.web-forwarding-rule-port_range
}

/*********************************************
  Internal TCP Load Balancers from Web to App
**********************************************/


/*********************************
  health check for the web to App
**********************************/

resource "google_compute_region_health_check" "web-to-app-health-check" {
  name                = var.web-to-app-health-check-name
  region              = var.web-to-app-health-check-region
  check_interval_sec  = 60
  timeout_sec         = 60
  healthy_threshold   = 2
  unhealthy_threshold = 10

  tcp_health_check {
       port           = 80
  }
}

/*************************************
  backend service for the web to App
*************************************/

resource "google_compute_region_backend_service" "web-to-app-backend-service" {
  name          = var.web-to-app-backend-service-name
  region        = var.web-to-app-backend-service-region
  protocol      = var.web-to-app-backend-service-protocol
  timeout_sec   = 30

  backend {
    group       = var.app-instance-group
  }

  health_checks = [google_compute_region_health_check.web-to-app-health-check.id]
}


/********************************
 forwarding rule for web to App
********************************/

resource "google_compute_forwarding_rule" "web-to-app-forwarding-rule" {
  name                  = var.web-to-app-forwarding-rule-name
  region                = var.web-to-app-forwarding-rule-region
  backend_service       = google_compute_region_backend_service.web-to-app-backend-service.id
  load_balancing_scheme = var.web-to-app-forwarding-rule-load-balancing-scheme
  all_ports             = true
  network               = var.vpc-network
  subnetwork            = var.web-subnet
}