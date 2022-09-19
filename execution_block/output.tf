output "groups_created" {
  value = [for k, v in var.demo_groups_variable : v]
}

output "users_created" {
  value = [for k, v in var.demo_users_variable : v]
}

output "membership_group_created" {
  value = [for k, v in var.demo_groups_variable : v]
}
