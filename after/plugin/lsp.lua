     local cmp = require'cmp'
require("luasnip.loaders.from_vscode").lazy_load()
local luasnip = require("luasnip")
luasnip.filetype_extend("typescript", { "typescript" })





local lspconfig = require('lspconfig')
 local configs = require('lspconfig/configs')
 local capabilities = vim.lsp.protocol.make_client_capabilities()
 capabilities.textDocument.completion.completionItem.snippetSupport = true
lspconfig.emmet_ls.setup({
     -- on_attach = on_attach,
     capabilities = capabilities,
     filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
     init_options = {
       html = {
         options = {
           -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
           ["bem.enabled"] = true,
         },
       },
     }
 })
-- lua language support
require'lspconfig'.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
--
  cmp.setup({
    snippet = {
       expand = function(args)
		  luasnip.lsp_expand(args.body)
      end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-j>'] = cmp.mapping.select_next_item(),
      ['<C-k>'] = cmp.mapping.select_prev_item(),
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),





	sources = cmp.config.sources({
	   {name = 'buffer'}, -- buffer completion
{ name = 'cmp_tabnine' },
 { name = 'nvim_lua', keyword_length = 2},
	   { name = 'luasnip' }, -- For ultisnips users.
      { name = 'nvim_lsp' },
       { name = 'path' }, -- path completion 
    })
   })

   -- Set up lspconfig.
  require('lspconfig')['tailwindcss'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['tsserver'].setup {
    capabilities = capabilities
}

  require('lspconfig')['cssls'].setup {
    capabilities = capabilities,
	settings = {
		-- add the same for scss ect if needed 
  css = {
    lint = {
       unknownAtRules = 'ignore'
    }
  }
}
}

-- Setings for how  lsp diagnostics are handled.
vim.o.updatetime = 400;

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = false,
});

vim.api.nvim_create_autocmd("CursorHold", {
  buffer = bufnr,
  callback = function()
    local opts = {
      focusable = true,
      close_events = { "BufLeave", "InsertEnter", "FocusLost" },
      border = 'rounded',
      source = 'always',
      prefix = ' ',
      scope = 'cursor',
    }
    vim.diagnostic.open_float(nil, opts)
  end
})

vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
