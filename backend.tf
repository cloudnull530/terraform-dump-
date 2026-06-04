terraform {
  backend "s3" {
    bucket         = "myfbuk530" 
    key            = "devs3/terraform.tfstate" 
    region         = "us-east-1"                 
    use_lockfile   = false
    encrypt        = true                        
  }
}
