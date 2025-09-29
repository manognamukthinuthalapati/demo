env = "dev"  # Change to dev/prod/qa when applying/destroying

environments = {
  dev = {
    instance_type = "t3.micro"
    location      = "ap-south-1"
  }
  prod = {
    instance_type = "t2.large"
    location      = "ap-south-1"
  }
  qa = {
    instance_type = "t2.medium"
    location      = "ap-south-1"
  }
}

instance_specifications = {
  ami    = "ami-02d26659fd82cf299"
  subnet = "subnet-"
}
