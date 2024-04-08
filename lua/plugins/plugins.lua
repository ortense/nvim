return {
  -- UI
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require 'plugins.configs.catppuccin'
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = function()
      require "plugins.configs.noice"
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require 'plugins.configs.lualine'
    end,
  },
  {
    -- TODO move to configs
    'folke/which-key.nvim',
    event = 'VeryLazy',
    init = function()
	    vim.o.timeout = true
	    vim.o.timeoutlen = 300
    end,
    cmd = 'WhichKey',
    keys = { '<leader>' },
    opts = {
	    window = {
		    border = 'shadow'
	    },
    }
  },
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require "plugins.configs.bufferline"
    end
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim",
    }
  },
  {
    "numToStr/FTerm.nvim"
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    requires = {
      'nvim-lua/plenary.nvim'
    },
  },
  "gbprod/yanky.nvim",
  'airblade/vim-gitgutter',
  'f-person/git-blame.nvim',

  -- LSP

	{
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },

  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',

	{
		'folke/trouble.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
  },


	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-vsnip',
			'hrsh7th/vim-vsnip',
			'L3M0N4D3/LuaSnip',
		},
		config = function()
			require 'plugins.configs.cmp'
		end,
	},
}
