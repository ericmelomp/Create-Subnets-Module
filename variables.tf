#create subnets in all AZs
variable "all_azs" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1e", "us-east-1f"]
}

variable "vpc_id" {
  type = string
  default = "vpc-07846064f27eb2140"
}