resource "aws_s3_bucket" "my-tea-bucket-tf"{
    bucket = "my-tea-bucket-tf"

    tags = {
        Name = "my-tea-bucket-tf"
        Environment = "QA and Dev"  
      }
}


resource "aws_s3_bucket_versioning" "my-tea-bucket-tf-versioning" {
    bucket = aws_s3_bucket.my-tea-bucket-tf.id
    
    versioning_configuration {
        status = "Enabled"
    }
}