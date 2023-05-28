

vim.g.neoformat_enabled_javascript = {'prettier'}
vim.g.neoformat_javascript_prettier = {
  exe = './node_modules/.bin/prettier',
  args = {'--stdin-filepath', '%:p'},
  stdin = 1,
  postprocess = 1,
}


vim.g.neoformat_enabled_typescript = {'prettier'}
vim.g.neoformat_typescript_prettier = {
  exe = './node_modules/.bin/prettier',
  args = {'--stdin-filepath', '%:p'},
  stdin = 1,
  postprocess = 1,
}
