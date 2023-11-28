variable "web-server-name" {
  type = string
  description = "web server name"
}
variable "machine-type" {
  type = string
  description = "specifying machine type"
}
variable "zone" {
  type = string
  description = "specifying zone"
}
variable "machine-image" {
  type = string
  description = "specifying image"
}
variable "vpc-network" {
  type = string
  description = "network name"
}
variable "web-subnet" {
  type = string
  description = "network name"
}