/********************
  web instance group 
*********************/

resource "google_compute_instance_group" "web-instance-group" {
  name        = var.web-instance-group-name
  zone        = var.web-instance-group-zone
  instances   = [var.web-server]
}

/********************
  app instance group 
*********************/

resource "google_compute_instance_group" "web-to-app-instance-group" {
  name        = var.web-to-app-instance-group-name
  zone        = var.web-to-app-instance-group-zone
  instances   = [var.app-server]
}
