-- auto update packer on save
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

require("jmac.packer")
require("jmac.set")
require("jmac.telescope")
require("jmac.remap")
require("jmac.keymap")
