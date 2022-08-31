resource "null_resource" "global" {}

resource "null_resource" "only_dev" {
  count = terraform.workspace == "dev" ? 1 : 0
}
