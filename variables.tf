variable "ami_prod" {
  type = string
}

variable "ami_nonprod" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "subnet_cidrs" {
  type = list(string)
}
variable "tag_prod" {
  type = map(string)
  /* default = {
    Name = "Default_Name_prod"
    Created_By = "Default_IAC"
  } 
  Note : map type of tag also works without passing default value , but type is required => type = map(string)
  */
}


variable "tag_nonprod" {
  type = map(string)
  /* default = {
    Name = "Default_Name_nonprod"
    Created_By = "Default_IAC"
  } 
  Note : map type of tag also works without passing default value , but type is required => type = map(string)
  */
}
