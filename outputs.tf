#Output file used to get output from Created resources

output "ec2_Ips_Prod" {
  
  value = aws_instance.ec2-terraform-prod[*].private_ip
}


output "ec2_Ips_NonProd" {
  value = "Private Ip of Non Prod EC2 is : ${aws_instance.ec2-terraform-nonprod.private_ip} and Public IP is : ${aws_instance.ec2-terraform-nonprod.public_ip}"
}
