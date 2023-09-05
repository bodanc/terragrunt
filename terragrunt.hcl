terraform {
  source = "./modules///"
}

inputs = {
  instance_type = "t3a.small"
  ami = "ami-06e46074ae430fba6"
}
