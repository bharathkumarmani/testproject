resource "aws_s3_bucket" "my-tea-bucket-tf"{
    bucket = "my-tea-bucket-tf"

    tags = {
        Name = "my-tea-bucket-tf"
        Environment = "QA and Dev"  
      }
}