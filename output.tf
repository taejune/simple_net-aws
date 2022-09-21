output "aws_vpcs" {
    value = aws_vpc.main.id
}

output "available_azs" {
    value = data.aws_availability_zones.available
}
#
#output "vpc_sub" {
#  value = module.vpc.vpc_secondary_cidr_blocks
#}