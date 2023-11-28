output "web_instance_group" {
  value = google_compute_instance_group.web-instance-group.self_link
}
output "app_instance_group" {
  value = google_compute_instance_group.web-to-app-instance-group.self_link
}