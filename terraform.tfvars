region = "ap-south-1"
project_name = "myproject"
vpc_cidr = "10.0.0.0/16"
public_subnets = [ {
  name = "pub-a", cidr = "10.0.1.0/24", az = "ap-south-1a" }, { name = "pub-b", cidr = "10.0.2.0/24", az = "ap-south-1b"}
 ]
 ami = ""
 instance_type = "t2.micro"
 instance_count = 2
 ingress_ports = [ 22, 80, 443, 8080 ]