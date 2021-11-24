terraform{
  backend "s3" {
  	bucket = "davindersingh"
  	key = "healthpartner-app-infra-state"
  	region = "us-east-1"
  }
}
