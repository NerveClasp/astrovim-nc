local opt = vim.opt

opt.colorcolumn = "80"
opt.cursorcolumn = true
opt.cursorline = true
opt.cursorlineopt = "screenline"
-- opt.updatetime = 250

opt.list = true
opt.listchars = {
  -- eol = "↲",
  tab = "▸ ",
  trail = "·",
  nbsp = "␣",
}
opt.swapfile = false
opt.backup = false
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.updatetime = 50
-- borrowed from ThePrimeagen github.com/ThePrimeagen/init.lua
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
