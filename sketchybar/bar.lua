local colors = require("colors")

-- Equivalent to the --bar domain
sbar.bar({
  topmost = "window",
  height = 37,
  color = colors.bar.bg,
  padding_right = 3,
  padding_left = 3,
})
