local languages = require("config.languages")

local M = {}

M.installed_language_servers = {}
M.installed_languages = {}
M.language_servers_config = {}

local function deduplicate_array(array)
  local seen = {}

  local result = {}

  for _, value in ipairs(array) do
    if not seen[value] then
      seen[value] = true

      table.insert(result, value)
    end
  end

  return result
end

for _, lang in ipairs(languages) do
  if type(lang[1]) == "string" then
    table.insert(M.installed_languages, lang[1])
  end

  if type(lang.lsp) == "table" then
    for _, lsp in ipairs(lang.lsp) do
      if type(lsp) == "string" then
        table.insert(M.installed_language_servers, lsp)
        M.language_servers_config[lsp] = {}
      end

      if type(lsp) == "table" and type(lsp.name) == "string" then
        table.insert(M.installed_language_servers, lsp.name)
        local opts = vim.deepcopy(lsp.opts or {})
        M.language_servers_config[lsp.name] = opts
      end
    end
  end
end


M.required_language_servers = deduplicate_array(M.installed_language_servers)
M.installed_languages = deduplicate_array(M.installed_languages)

return M
