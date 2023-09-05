output "public_ip_0" {
  value = aws_instance.ec2_instance_0.public_ip
}

output "public_ip_1" {
  value = aws_instance.ec2_instance_1.public_ip
}
