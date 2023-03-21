
resource "aws_instance" "wordpress" {
  ami = data.aws_ami.amz_linux_ami.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.wep-ports.id]
  user_data = file("user_data.sh")
}

resource "aws_security_group" "web-ports" {
    name = "allow_web_ports"
    description = "Allow web ports for inbound access"
    dynamic "ingress" {
        for_each = ["80", "443"]
        content{
          from_port = ingress.value
          to_port =  ingress.value
          protocol = tcp
          cird_blocks = ["0.0.0.0/0"]
        
        }  
    }
    
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = [ "0.0.0.0/0" ]

    }
}