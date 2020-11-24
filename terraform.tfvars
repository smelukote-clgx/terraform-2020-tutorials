project = "gcp-tf-tutorials"
credentials_file = "sa-key.json"
region   = "us-central1"
zone     = "us-central1-a"
cidrs = [ "10.0.0.0/16", "10.1.0.0/16" ]
machine_types = {
  dev  = "f1-micro"
  test = "n1-highcpu-32"
  prod = "n1-highcpu-32"
}
