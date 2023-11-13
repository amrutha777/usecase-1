# Output the IP address of the load balancer

output "load_balancer_ip" {
  value = google_compute_global_forwarding_rule.web-forwarding-rule.ip_address
}