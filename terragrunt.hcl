terraform {
  source = "./modules///"
}

inputs = {
  instance_type = "t3a.medium"
  ami = "ami-06e46074ae430fba6"
  az1 = "us-east-1a"
  az2 = "us-east-1b"
}
