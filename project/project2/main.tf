module "ec2"{
    source="../modules/ec2"
    ami= var.ami
    instance_type= var.instance_type
    public_subnet_ec2= module.network.public
}
module "s3"{
    source="../modules/s3"
    bucket = var.bucket
    
}

module "network" {
  source="../modules/network"
  private_subnet = var.private_subnet
  public_subnet = var.public_subnet
  vpc_variable = var.vpc_variable
}

module "dynamodb" {
    source ="../modules/dynamoDB"
}

module "endpoint" {
  source ="../modules/vpc-endpoint"
  vpc_id = module.network.vpc_id
  route_table_id = module.network.route_table_id
  region = var.region
}

        
    
  




