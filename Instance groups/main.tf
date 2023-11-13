# creating instance group for web server

resource "google_compute_instance_group" "web-instance-group" {
  name        = var.web-instance-group-name
  zone        = var.web-instance-group-zone
  instances = [
    google_compute_instance.web-server.self_link
  ]
}

# creating instance group for app server

resource "google_compute_instance_group" "app-instance-group" {
  name        = var.app-instance-group-name
  zone        = var.app-instance-group-zone
  instances = [
    google_compute_instance.app-server.self_link
  ]
}

# creating instance group for db server


resource "google_compute_instance_group" "db-instance-group" {
  name        = var.db-instance-group-name
  zone        = var.db-instance-group-zone
  instances = [
    google_compute_instance.db-server.self_link
  ]
}