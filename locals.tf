locals {
    name = "mwaa"
    environment = "dev"
    bucket_name = format("%s-%s", "${local.name}-dags-${local.environment}", data.aws_caller_identity.current.account_id) 
    azs         = slice(data.aws_availability_zones.available.names, 0, 2)
    # vpc_id = "vpc-f8b9c982"
    # private_subnets = 
}