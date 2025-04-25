local ts_ls = {
  name = 'ts_ls',
  opts = {
    root_dir = 'package.json',
    single_file_support = false,
  },
}

local biome = {
  name = 'biome',
  opts = {
    root_dir = { 'biome.json', 'biome.jsonc' },
  },
}

local denols = {
  name = 'denols',
  opts = {
    root_dir = { 'deno.json', 'deno.jsonc' },
  },
}

return {
  { 'vim' },
  { 'regex' },
  { 'lua',        lsp = { 'lua_ls' },             formatter = { 'stylua' } },
  { 'rust',       lsp = { 'rust_analyzer' },      formatter = { 'rustfmt' } },
  { 'go',         lsp = { 'gopls' },              formatter = { 'goimports' }, linter = { 'golangci-lint' } },
  { 'typescript', lsp = { denols, ts_ls, biome }, formatter = { 'biome' },     linter = { 'biome' } },
  { 'javascript', lsp = { denols, ts_ls, biome }, formatter = { 'biome' },     linter = { 'biome' } },
  { 'tsx',        lsp = { denols, ts_ls, biome }, formatter = { 'biome' },     linter = { 'biome' } },
  { 'json',       lsp = { 'jsonls' },             formatter = { 'biome' },     linter = { 'biome' } },
  { 'php',        lsp = { 'intelephense' } },
  { 'yaml',       lsp = { 'yamlls' } },
  { 'html',       lsp = { 'html' } },
  { 'css',        lsp = { 'cssls' } },
  { 'markdown',   lsp = { 'marksman' } },
  { 'templ',      lsp = { 'templ', 'html' } },
}
