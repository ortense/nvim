require('lualine').setup({
  options = {
    icons_enabled = true,
    component_separators = '|',
    section_separators = '',
  },
  sections = {
    lualine_a = {
	'mode',
    },
    lualine_c = {},
    lualine_x = { 
	'encoding',
	'filetype',
    },
  },
})
