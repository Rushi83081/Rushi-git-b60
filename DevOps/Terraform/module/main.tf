module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = "10.0.0.0/16"
  subnet_cidr = "10.0.0.0/22"
  az = "eu-north-1a"
  pub_sub = true
}

module "ec2" {
  source = "./modules/ec2"
  ami_id = "ami-0c7d68785ec07306c"
  instance_type = "t3.micro"
  key = "new-key"
  subnet_id = module.vpc.subnet_id
  vpc_security_group_id = module.vpc.security_group_id
}
