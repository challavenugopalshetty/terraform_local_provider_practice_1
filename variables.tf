# variables.tf file stores the declaration of variables and its default values

variable "filename" {
  type = string
  description = "name given to file"
}

variable "content" {
  type = string
  description = "This stores the content that need to be writtern in the file"
  default = "No content here"
}