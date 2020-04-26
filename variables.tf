variable "zone_STG" {
  type = string
  description = "STG Environment"
  default = "us-central1-a"
}

variable "machine_type_STG" {
  type = string
  description = "STG Environment"
  default = "n1-standard-1"
}


variable "zone_PRD" {
  type = string
  description = "PRD Environment"
  default = "europe-west2-b"
}

variable "machine_type_PRD" {
  type = string
  description = "PRD Environment"
  default = "n1-standard-2"
}