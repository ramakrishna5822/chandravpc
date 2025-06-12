resource "aws_instance" "server" {
    ami = "ami-020cba7c55df1f615"
    key_name = "Sai-key"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.sg.id]
    subnet_id = aws_subnet.subnet1.id
    private_ip = "10.70.1.5"
    associate_public_ip_address= true
    tags = {
        Name = "chandra-server"
    }
  
}