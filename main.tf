resource "aws_s3_bucket" "data" {
  bucket = "example-data-bucket"
}

resource "aws_instance" "web" {
  ami           = "ami-0123456789abcdef0"
  instance_type = "t3.micro"
}

resource "aws_db_instance" "db" {
  allocated_storage = 20
  engine            = "postgres"
  instance_class    = "db.t3.micro"
  publicly_accessible = true
}
