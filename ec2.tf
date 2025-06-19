resource "aws_instance" "MyInstance" {
  ami           = "ami-0b09627181c8d5778" # Example AMI ID, replace with a valid one
  instance_type = "t2.micro"
  key_name = "my-tea-ec"
  security_groups = [ "default" ]
  availability_zone = "ap-south-1a" # Replace with your desired availability zone

  tags = {
Name = "MyWebServer"
    Environment = "QA"
  }
}