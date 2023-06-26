output "public_dns" {
   description = "AWS EC2 instance public DNS name"
   value = aws_instance.this.public_dns
}

output "arn" {
   description = "AWS EC2 ARN"
   value = aws_instance.this.arn
}

output "arn" {
   description = "AWS EC2 ARN"
   value = aws_instance.this.arn
}

output "instance_id" {
   value = aws_instance.this.host_id
}