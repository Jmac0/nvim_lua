
-- setup must be called before loading the colorscheme
-- Default options:
require("gruvbox").setup({
  undercurl = true,
  transparent_mode = true,
})
-- check if colorscheme is nstalled 
local status,_= pcall( vim.cmd,"colorscheme gruvbox")
if not status then
	print("colorscheme not found")
	return
end


vim.o.background = "dark" -- or "light" for light mode
