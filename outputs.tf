output "vpc_id" {
    value = module.vpc.vpc_id
}

output "public_subnets" {
  value = module.vpc.public_subnets_ids
}

output "internet_gateway" {
  value = module.vpc.internet_gateway_id
}

output "route_table" {
  value = module.vpc.public_route_table_id
}

output "ec2_ids" {
  value = module.ec2.instance_ids
}

output "sg_id" {
  value = module.ec2.sg_id
}

# output "bucket_name" {
#   value = module.s3_backend.bucket
# }