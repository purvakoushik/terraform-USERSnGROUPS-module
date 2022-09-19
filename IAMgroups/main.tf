resource "aws_iam_group" "creating_demo_groups" {
  # for_each = var.demo_groups
  name = var.demo_groups
}

