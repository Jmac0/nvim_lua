local nnoremap = require("jmac.keymap").nnoremap
local inoremap = require("jmac.keymap").inoremap
local vnoremap = require("jmac.keymap").vnoremap
inoremap("lll","console.log()<left>")

-- Comments ---------
-- surround then gc
-- docs at terrortylor/nvim-comment

-- bracket + quote pairs 
inoremap("{{","{}<left>")
inoremap("[[","[]<left>")
inoremap("((","()<left>")
inoremap("''","''<left>")
inoremap("<leader>t","<cmd>NvimTreeToggle<CR>")

-- back to normal mode on jk press   
inoremap("jk", "<esc>")

-- Save file 
nnoremap("<C-s>","<cmd>w<CR>")
inoremap("<C-s>","<cmd>w<CR>")

-- run prettier 
nnoremap("<leader>gp","<cmd>Neoformat prettier<CR>")

-- open netrw
nnoremap("<leader>v", "<cmd>Ex<CR>")	

--clear higlighting 
nnoremap("<leader>h", "<cmd>nohl<CR>")	

-- suse x to delete without copying
vnoremap("x", '"_x')
nnoremap("x", '"_x')

-- increment & decrement numbers
nnoremap("<leader>+", "<C-a>")	
nnoremap("<leader>-", "<C-x>")	

-- Split windows
nnoremap("<leader>sv", "<C-w>v") -- Vertical split 
nnoremap("<leader>sh", "<C-w>s") -- Horizontal split
nnoremap("<leader>se", "<C-w>=") -- Make splits equal sizes	
nnoremap("<leader>sx", "<cmd>close<CR>") -- Close Split window

-- Tabs
nnoremap("<leader>to", "<cmd>tabnew<CR>") -- New tab
nnoremap("<leader>tx", "<cmd>tabclose<CR>") -- Close tab
nnoremap("<S-O-right>", "<cmd>tabn<CR>") -- New tab
nnoremap("<S-O-left>", "<cmd>tabp<CR>") -- New tab 

-- NvimTree Toggle

nnoremap("<leader>e","<cmd>NvimTreeToggle<CR>")
