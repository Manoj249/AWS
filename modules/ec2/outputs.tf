output "instance_ids" {
  value = aws_instance.ec2[*].id
}

output "sg_id" {
  value = aws_security_group.sg.id
}