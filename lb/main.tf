/***************************************
  External Load balancer for web server
****************************************/

# Create a health check for the web server instances

resource "google_compute_health_check" "web-health-check" {
  name               = var.web-health-check-name
  check_interval_sec = 10
  timeout_sec        = 5
  tcp_health_check {
    port = 80
  }
}

# Create a backend service for the web server with health check

resource "google_compute_backend_service" "web-backend-service" {
  name                    = var.web-backend-service-name
  protocol                = var.web-backend-service-protocol
  timeout_sec             = 30
  port_name               = var.web-backend-service-port-name
  enable_cdn              = false
  affinity_cookie_ttl_sec = 0

  backend {
    group = google_compute_instance_group.web-instance-group.self_link
  }

  health_checks = [google_compute_health_check.web-health-check.self_link]
}

# Create a URL map

  resource "google_compute_url_map" "web-url-map" {
  name            = var.web-url-map-name
  default_service = "https://www.googleapis.com/compute/v1/projects/blissful-fiber-397508/global/backendServices/web-backend-service"
}

# Create a target HTTP proxy

resource "google_compute_target_http_proxy" "web-target-proxy" {
  name               = var.web-target-proxy-name
  url_map            = google_compute_url_map.web-url-map.self_link
 
}

# Create a global forwarding rule

resource "google_compute_global_forwarding_rule" "web-forwarding-rule" {
  name       = var.web-forwarding-rule-name
  target     = google_compute_target_http_proxy.web-target-proxy.self_link
  port_range = var.web-forwarding-rule-port_range
  ip_protocol = var.web-forwarding-rule-ip-protocol
}



