terraform {
  backend "gcs" {
    bucket = "test-qut-cvt"
    prefix = "ci_cd"
  }
}
