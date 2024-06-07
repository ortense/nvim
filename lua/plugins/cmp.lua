return {
	'hrsh7th/nvim-cmp',
	dependencies = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-vsnip',
			'hrsh7th/vim-vsnip',
			'L3MON4D3/LuaSnip',
	},
  config = function()
    local cmp = require('cmp')

    require('luasnip.loaders.from_vscode').lazy_load()

    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-o>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      }),
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
      },
        {
          { name = 'buffer' },
        }),
    })
  end,
}

