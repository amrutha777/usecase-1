variable "db-server-name" {
  type = string
  description = "db server name"
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
  description = "specify images"
}
variable "vpc-network" {
  type = string
  description = "name of the vpc"
}
variable "db-subnet" {
  type = string
  description = "name of the db subnet"
}