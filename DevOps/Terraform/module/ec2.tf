resource "aws_instance" "web" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.key
  subnet_id = var.subnet_id
  vpc_security_group_ids = [ var.vpc_security_group_id ]
   user_data = <<-EOF
     #!/bin/bash 
     sudo -i
     yum install httpd -y 
     systemctl start httpd 
     systemctl enable httpd 
     echo "Terraform Modules" > /var/www/html/index.html
    EOF

    tags = {
        Name = "Webserver"
    }
}
