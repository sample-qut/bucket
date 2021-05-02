terraform {
  backend "gcs" {
    project = "cft-seed-50a5"
    bucket = "test-qut-cvt"
    prefix = "ci_cd"
  }
}
