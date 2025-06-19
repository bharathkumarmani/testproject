resource "aws_ebs_volume" "my_volume" {
  availability_zone = aws_instance.MyInstance.availability_zone # Replace with your desired availability zone
  size              = 1              # Size in GB
  type              = "gp3"           # General Purpose SSD
  tags = {
    Name        = "MyEBSVolume"
    Environment = "QA"
  }
}
resource "aws_volume_attachment" "my_volume_attachment" {
  device_name = "/dev/sdh" # Device name to attach the volume
  volume_id   = aws_ebs_volume.my_volume.id
  instance_id = aws_instance.MyInstance.id # Replace with your EC2 instance ID
  
}