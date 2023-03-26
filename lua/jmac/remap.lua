local nnoremap = require("jmac.keymap").nnoremap
local inoremap = require("jmac.keymap").inoremap
local vnoremap = require("jmac.keymap").vnoremap
inoremap("lll","console.log()<left>")

-- Comments ---------
-- surround then gc
-- docs at terrortylor/nvim-comment

--Move lines up and down in visual mode 
--vnoremap ("<S-C-Up>",   "<cmd>m <-2<CR>gv=gv")
--vnoremap ("<S-C-Down>", "<cmd>m >+1<CR>gv=gv")



-- bracket + quote pairs 
inoremap("{{","{}<left>")
inoremap("[[","[]<left>")
inoremap("((","()<left>")
inoremap("''","''<left>")

-- back to normal mode on jk press   
inoremap("jk", "<esc>")

-- Save file 
nnoremap("<C-s>","<cmd>w<CR>")
inoremap("<C-s>","<cmd>w<CR>")

-- run prettier 
nnoremap("<leader>gp","<cmd>Neoformat prettier<CR>")

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
-- Buffers
-- Previous and next buffer
nnoremap("<leader>bd", "<cmd>w|bd|b#<CR>") -- delete current and open previous buffer
-- Previous and next buffer
nnoremap("<leader><left>", "<cmd>bp<CR>") -- Previous buffer
nnoremap("<leader><right>", "<cmd>bn<CR>") -- Next buffer
-- save and delet all buffers, open NvimTree
nnoremap("<leader>ka","<cmd>wa|%bd|NvimTreeToggle<CR>")


-- NvimTree Toggle
nnoremap("<leader>e","<cmd>NvimTreeToggle<CR>")
------------------Find and replace------------------
-- use * to higlight word then leader r to enter replace mode
nnoremap("<leader>r", ":%s///g<left><left>") 

-- use * to higlight word then leader r to enter replace mode
nnoremap("<leader>rc", ":%s///gc<left><left><left>")
-- as above, but with a visual selection 
vnoremap("<leader>r", ":%s///g<left><left>")
vnoremap("<leader>rc", ":%s///gc<left><left><left>")
--- React jsx comment block 
inoremap("<leader>rc", "{/**/}<left><left><left>") -- Previous buffer



-- Keymaps for Trouble lsp plugin 
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)
