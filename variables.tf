variable "compute_router_named_sets" {
  description = <<EOT
Map of compute_router_named_sets, attributes below
Required:
    - name
    - router
    - type
Optional:
    - deletion_policy
    - description
    - project
    - region
    - elements (block):
        - description (optional)
        - expression (required)
        - location (optional)
        - title (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name            = string
    router          = string
    type            = string
    deletion_policy = optional(string)
    description     = optional(string)
    project         = optional(string)
    region          = optional(string)
    elements = optional(list(object({
      description = optional(string)
      expression  = string
      location    = optional(string)
      title       = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

