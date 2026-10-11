output "compute_router_named_sets_id" {
  description = "Map of id values across all compute_router_named_sets, keyed the same as var.compute_router_named_sets except keys with no id are omitted"
  value       = { for k, v in google_compute_router_named_set.compute_router_named_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_router_named_sets_deletion_policy" {
  description = "Map of deletion_policy values across all compute_router_named_sets, keyed the same as var.compute_router_named_sets except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_router_named_set.compute_router_named_sets : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_router_named_sets_description" {
  description = "Map of description values across all compute_router_named_sets, keyed the same as var.compute_router_named_sets except keys with no description are omitted"
  value       = { for k, v in google_compute_router_named_set.compute_router_named_sets : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_router_named_sets_elements" {
  description = "Map of elements values across all compute_router_named_sets, keyed the same as var.compute_router_named_sets except keys with no elements are omitted"
  value       = { for k, v in google_compute_router_named_set.compute_router_named_sets : k => v.elements if v.elements != null && length(v.elements) > 0 }
}
output "compute_router_named_sets_fingerprint" {
  description = "Map of fingerprint values across all compute_router_named_sets, keyed the same as var.compute_router_named_sets except keys with no fingerprint are omitted"
  value       = { for k, v in google_compute_router_named_set.compute_router_named_sets : k => v.fingerprint if v.fingerprint != null && length(v.fingerprint) > 0 }
}
output "compute_router_named_sets_name" {
  description = "Map of name values across all compute_router_named_sets, keyed the same as var.compute_router_named_sets except keys with no name are omitted"
  value       = { for k, v in google_compute_router_named_set.compute_router_named_sets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_router_named_sets_project" {
  description = "Map of project values across all compute_router_named_sets, keyed the same as var.compute_router_named_sets except keys with no project are omitted"
  value       = { for k, v in google_compute_router_named_set.compute_router_named_sets : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_router_named_sets_region" {
  description = "Map of region values across all compute_router_named_sets, keyed the same as var.compute_router_named_sets except keys with no region are omitted"
  value       = { for k, v in google_compute_router_named_set.compute_router_named_sets : k => v.region if v.region != null && length(v.region) > 0 }
}
output "compute_router_named_sets_router" {
  description = "Map of router values across all compute_router_named_sets, keyed the same as var.compute_router_named_sets except keys with no router are omitted"
  value       = { for k, v in google_compute_router_named_set.compute_router_named_sets : k => v.router if v.router != null && length(v.router) > 0 }
}
output "compute_router_named_sets_type" {
  description = "Map of type values across all compute_router_named_sets, keyed the same as var.compute_router_named_sets except keys with no type are omitted"
  value       = { for k, v in google_compute_router_named_set.compute_router_named_sets : k => v.type if v.type != null && length(v.type) > 0 }
}

