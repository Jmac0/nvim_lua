     local cmp = require'cmp'
require("luasnip.loaders.from_vscode").lazy_load()
local luasnip = require("luasnip")
luasnip.filetype_extend("typescript", { "typescript" })


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
      { name = 'nvim_lsp' },
       { name = 'luasnip' }, -- For ultisnips users.
       { name = 'path' }, -- path completion 
    })
 
  }) 

   -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
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

