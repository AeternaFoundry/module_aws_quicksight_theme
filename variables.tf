variable "quicksight_themes" {
  description = <<EOT
Map of quicksight_themes, attributes below
Required:
    - base_theme_id
    - name
    - theme_id
Optional:
    - aws_account_id
    - region
    - tags
    - tags_all
    - version_description
    - configuration (block):
        - data_color_palette (optional, block):
            - colors (optional)
            - empty_fill_color (optional)
            - min_max_gradient (optional)
        - sheet (optional, block):
            - tile (optional, block):
                - border (optional, block):
                    - show (optional)
            - tile_layout (optional, block):
                - gutter (optional, block):
                    - show (optional)
                - margin (optional, block):
                    - show (optional)
        - typography (optional, block):
            - font_families (optional, block):
                - font_family (optional)
        - ui_color_palette (optional, block):
            - accent (optional)
            - accent_foreground (optional)
            - danger (optional)
            - danger_foreground (optional)
            - dimension (optional)
            - dimension_foreground (optional)
            - measure (optional)
            - measure_foreground (optional)
            - primary_background (optional)
            - primary_foreground (optional)
            - secondary_background (optional)
            - secondary_foreground (optional)
            - success (optional)
            - success_foreground (optional)
            - warning (optional)
            - warning_foreground (optional)
    - permissions (block):
        - actions (required)
        - principal (required)
EOT

  type = map(object({
    base_theme_id       = string
    name                = string
    theme_id            = string
    aws_account_id      = optional(string)
    region              = optional(string)
    tags                = optional(map(string))
    tags_all            = optional(map(string))
    version_description = optional(string)
    configuration = optional(object({
      data_color_palette = optional(object({
        colors           = optional(list(string))
        empty_fill_color = optional(string)
        min_max_gradient = optional(list(string))
      }))
      sheet = optional(object({
        tile = optional(object({
          border = optional(object({
            show = optional(bool)
          }))
        }))
        tile_layout = optional(object({
          gutter = optional(object({
            show = optional(bool)
          }))
          margin = optional(object({
            show = optional(bool)
          }))
        }))
      }))
      typography = optional(object({
        font_families = optional(list(object({
          font_family = optional(string)
        })))
      }))
      ui_color_palette = optional(object({
        accent               = optional(string)
        accent_foreground    = optional(string)
        danger               = optional(string)
        danger_foreground    = optional(string)
        dimension            = optional(string)
        dimension_foreground = optional(string)
        measure              = optional(string)
        measure_foreground   = optional(string)
        primary_background   = optional(string)
        primary_foreground   = optional(string)
        secondary_background = optional(string)
        secondary_foreground = optional(string)
        success              = optional(string)
        success_foreground   = optional(string)
        warning              = optional(string)
        warning_foreground   = optional(string)
      }))
    }))
    permissions = optional(list(object({
      actions   = set(string)
      principal = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.quicksight_themes : (
        v.configuration == null || (v.configuration.typography == null || (v.configuration.typography.font_families == null || (length(v.configuration.typography.font_families) <= 5)))
      )
    ])
    error_message = "Each font_families list must contain at most 5 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.quicksight_themes : (
        v.permissions == null || (length(v.permissions) <= 64)
      )
    ])
    error_message = "Each permissions list must contain at most 64 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.quicksight_themes : (
        v.version_description == null || (length(v.version_description) >= 1 && length(v.version_description) <= 512)
      )
    ])
    error_message = "must be between 1 and 512 characters"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

