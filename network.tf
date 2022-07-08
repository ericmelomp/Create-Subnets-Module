resource "aws_subnet" "private_subnets" {
  #create 1 subnet in each AZ
  count             = length(var.all_azs)
  vpc_id            = var.vpc_id
  availability_zone = var.all_azs[count.index]
  cidr_block        = "172.31.${1 + count.index}.0/24"

  tags = {
    name = "subnet-terraform"
  }
}
