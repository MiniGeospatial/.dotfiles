local colors = require("colors")
local icons = require("icons")
local settings = require("settings")
local app_icons = require("helpers.app_icons")

local spaces = {}

for i = 1, 10, 1 do
  local space = sbar.add("space", "space." .. i, {
    space = i,
    icon = {
      font = { family = settings.font.numbers },
      string = i,
      padding_left = 15,
      padding_right = 8,
      color = colors.white,
      highlight_color = colors.magenta,
    },
    label = {
      padding_right = 20,
      color = colors.grey,
      highlight_color = colors.magenta,
      font = "VictorMono NF:Bold:18.0",
      x_offset = -1,
    },
    padding_right = 1,
    padding_left = 1,
    background = {
      color = colors.bg1,
      border_width = 3,
      border_color = colors.bg2,
    },
    popup = { background = { border_width = 5, border_color = colors.bg2 } }
  })

  spaces[i] = space

  -- Padding space
  sbar.add("space", "space.padding." .. i, {
    space = i,
    script = "",
    width = settings.group_paddings,
  })

  space:subscribe("space_change", function(env)
    local selected = env.SELECTED == "true"
    local color = selected and colors.magenta or colors.bg2
    space:set({
      icon = { highlight = selected, },
      label = { highlight = selected },
      -- background = { border_color = selected and colors.bg2 or colors.bg2 }
    })
    -- space_bracket:set({
      -- background = { border_color = selected and colors.magenta, border_width = 3 }
    -- })
  end)

end

local space_window_observer = sbar.add("item", {
  drawing = false,
  updates = true,
})


space_window_observer:subscribe("space_windows_change", function(env)
  local icon_line = ""
  local no_app = true
  for app, count in pairs(env.INFO.apps) do
    no_app = false
    local lookup = app_icons[app]
    local icon = ((lookup == nil) and app_icons["default"] or lookup)
    icon_line = icon_line .. " " .. icon
  end

  if (no_app) then
    icon_line = " —"
  end
  sbar.animate("tanh", 10, function()
    spaces[env.INFO.space]:set({ label = icon_line })
  end)
end)
