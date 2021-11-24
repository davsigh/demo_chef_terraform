terraform {
  backend "s3" {
  	bucket = "davindersingh"
  	key = "healthpartner-network-state"
  	region = "us-east-1"
  }
}
