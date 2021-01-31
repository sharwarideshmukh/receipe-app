variable "prefix" {
  default = "raad"
}

variable "project"{
  default = "receipe-app- api-devops"
}

variable "contact"{
  default = "dsharwari202@gmail.com"
}

variable "db_username" {
  description = "Username for the RDS Postgres instance"
}

variable "db_password" {
  description = "Password for the RDS postgres instance"
}
