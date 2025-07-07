return { 
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    transparent_background = true, -- disables setting the background color.
    dim_inactive = {
        enabled = true, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.08, -- percentage of the shade to apply to the inactive window
    },
    show_end_of_buffer = true,
    highlight_overrides = {
      all = function(colors)
        return {
          CursorLineNr = { 
            fg = colors.peach,
          }
        }
      end
    },
    intergrations = {
      gitsigns = true,
      telescope = true,
      neogit = true,
      nvim_surround=true,
      telescope = {
        enabled = true,
      },
      mason = true
    },
  }
}

