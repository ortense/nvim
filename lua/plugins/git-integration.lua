return {
  'airblade/vim-gitgutter',
  'f-person/git-blame.nvim',
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  },
}
