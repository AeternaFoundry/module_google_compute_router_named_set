resource "google_compute_router_named_set" "compute_router_named_sets" {
  for_each = var.compute_router_named_sets

  name            = each.value.name
  router          = each.value.router
  type            = each.value.type
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  project         = each.value.project
  region          = each.value.region

  dynamic "elements" {
    for_each = each.value.elements != null ? each.value.elements : []
    content {
      description = elements.value.description
      expression  = elements.value.expression
      location    = elements.value.location
      title       = elements.value.title
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

