resource "aws_instance" "web" {
  count = 2
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = element(var.subnet_ids, count.index)
  vpc_security_group_ids = [var.security_group_id]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "Terraform WebServer - $(hostname)" > /var/www/html/index.html
              EOF

  tags = {
    Name = "WebServer-${count.index}"
  }
}

output "public_ips" {
  value = aws_instance.web[*].public_ip
}

