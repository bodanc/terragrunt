output "public_ip_1" {
  value = aws_instance.ec2_instance_1.public_ip
}

output "public_ip_2" {
  value = aws_instance.ec2_instance_2.public_ip
}
