
-- setup must be called before loading the colorscheme
-- Default options:
require("gruvbox").setup({
  undercurl = true,
  transparent_mode = false,
})
vim.cmd("colorscheme gruvbox")


vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
