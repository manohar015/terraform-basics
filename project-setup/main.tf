module "frotned" {
  source ="./ec2"
  COMPONENT = "frontend"
  APP_VERSION = "0.0.1"

}