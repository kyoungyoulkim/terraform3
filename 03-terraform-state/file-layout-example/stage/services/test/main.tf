provider "aws" {
  region = "us-east-1"
}

#data "template_file" "user_data" {
#  template = "${file("user-data.sh")}"
#
#  vars = {
#    server_port = "${var.server_port}"
#    db_address  = "${data.terraform_remote_state.db.address}"
#    db_port     = "${data.terraform_remote_state.db.port}"
#  }
#}

output "db_address" {
  value = "${data.terraform_remote_state.db.address}"
}
output "db_port" {
  value = "${data.terraform_remote_state.db.port}"
}

data "terraform_remote_state" "db" {
  backend = "s3"

  config = {
    bucket = "${var.db_remote_state_bucket}"
    key    = "${var.db_remote_state_key}"
    region = "us-east-1"
  }
}