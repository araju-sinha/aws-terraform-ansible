# Setup our aws provider
provider "aws" {
  access_key  = "AKIARKB35ZMGTWDMM3RQ"
  secret_key  = "LoZBX5tuaZdmhcdQDAE3QfWBpo7sPpoa1UIoqYqH"
  region      = "ap-south-1"
}


resource "aws_instance" "example" {
  ami = "ami-073c8c0760395aab8"
  instance_type = "t2.micro"
  key_name = "aaru_terraform"

  tags = {
      Name = "docker"
    }
} 

