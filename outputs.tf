# output "vpc_id" {
#     value = module.vpc.vpc_id
# }


output "security_group_id" {
  value = aws_security_group.main.id
}