resource "aws_route_table" "rt" {
vpc_id = aws_vpc.test.id
route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
}  
tags = {
    Name = "chandra-route-table"
}
}

resource "aws_route_table_association" "association1" {
route_table_id = aws_route_table.rt.id
subnet_id = aws_subnet.subnet1.id
}

resource "aws_route_table_association" "association2" {
route_table_id = aws_route_table.rt.id
subnet_id = aws_subnet.subnet2.id
}

resource "aws_route_table_association" "association3" {
route_table_id = aws_route_table.rt.id
subnet_id = aws_subnet.subnet3.id
}