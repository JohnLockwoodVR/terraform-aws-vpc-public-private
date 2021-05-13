output "vpc" {
  value = aws_vpc.this[0]
}

output "nat_gateway" {
  value = try(aws_nat_gateway.nat, null)
}

output "subnets" {
  value = {
    public  = aws_subnet.public
    private = aws_subnet.private
  }
}
