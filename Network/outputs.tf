output "vpc_name" {
    value = google_compute_network.sample-vpc.name
}
output "web_subnet" {
  value = google_compute_subnetwork.sample-subnet1.name 
}
output "app_subnet" {
  value = google_compute_subnetwork.sample-subnet2.name
}
output "db_subnet" {
  value = google_compute_subnetwork.sample-subnet3.name
}
output "web_tag" {
  value = google_compute_firewall.web-firewall.target_tags
}
output "app_tag" {
  value = google_compute_firewall.app-firewall.target_tags
}
output "db_tag" {
  value = google_compute_firewall.db-firewall.target_tags
}