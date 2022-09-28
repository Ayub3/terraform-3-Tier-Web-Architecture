module "public_bastion_security-group" {
  source      = "terraform-aws-modules/security-group/aws"
  version     = "4.13.1"
  name        = "public-bastion-security-group"
  description = "Sg with SSH port open for public, and outbound open"
  vpc_id      = module.vpc.vpc_id

  #   ingress rules & CIDR Block
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["ssh-tcp"]

  # Egress Rule - all-all open
  egress_rules = ["all-all"]
  tags = local.common_tags
}