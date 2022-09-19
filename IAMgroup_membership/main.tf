resource "aws_iam_group_membership" "adding_users2group" {
  # count = length(var.demo_group)
  name  = "adding_users_to_the_group"
  users = var.demo_users
  group = var.demo_groups
}
