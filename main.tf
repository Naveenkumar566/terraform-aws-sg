<<<<<<< HEAD
module "vpc" {
    source = "../../terraform-aws-vpc"
    project = var.project
    environment =  var.environment
    is_peering_required = true
=======
resource "aws_security_group" "main" {
  name        = "${var.project}-${var.environment}-${var.sg_name}"
  description = "Allow TLS inbound traffic and all outbound traffic ${var.project} in ${var.environment} for component ${var.sg_name}"
  vpc_id      = var.vpc_id
  


  egress {                                           #This the traffic that is allowed from the instance so we can allow egress rules.
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

    tags = merge(
    var.sg_tags,
    local.common_tags,
    {
        Name = "${var.project}-${var.environment}-${var.sg_name}"
    }
  )
>>>>>>> b3c8b0a (actions)
}
