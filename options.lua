local opt = vim.opt

opt.colorcolumn = "80"
opt.cursorcolumn = true
opt.cursorline = true
opt.cursorlineopt = "screenline"
opt.updatetime = 250

opt.list = true
opt.listchars = {
  -- eol = "↲",
  tab = "▸ ",
  trail = "·",
  nbsp = "␣",
}
