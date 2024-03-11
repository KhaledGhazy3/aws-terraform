variable "vpc_variable" {
  description = "VPC CIDR Block"
  type = string
}

variable "public_subnet" {
  description = "Public Subnet"
  type = string
}

variable "private_subnet" {
  description = "Private Subnet"
  type = string
}
variable "region" {
    description= "my region "
    type= string 
}


variable "bucket" {
    description = "my bucket"
    type = string
  
}

variable "ami" {
    description = "my ami"
    type = string
  
}

variable "instance_type" {
    description = "instance type"
    type = string
  
}