module "iam" {
  source = "./modules/IAM"
  # pass variables here
}

module "ec2" {
  source = "./modules/ec2"
  name  = var.name
  instance_type  = var.instance_type
  project     = var.project
  environment = var.environment

}