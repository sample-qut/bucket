terraform {
  backend "gcs" {
    bucket = "ex-cvt-tfs"
    prefix = "ci_cd"
  }
}
