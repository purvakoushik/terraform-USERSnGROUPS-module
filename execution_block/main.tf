module "creating_groups_module" {
  for_each    = var.demo_groups_variable
  source      = "../IAMgroups"
  demo_groups = each.value
}

module "creating_users_module" {
  for_each   = var.demo_users_variable
  source     = "../IAMusers"
  demo_users = each.value
}


module "adding_users2group" {
  for_each    = var.demo_groups_variable
  source      = "../IAMgroup_membership"
  demo_users  = var.demo_users_membership
  demo_groups = each.value
  depends_on = [
    module.creating_groups_module,
    module.creating_users_module
  ]
}
