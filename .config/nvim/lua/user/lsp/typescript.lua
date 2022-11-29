local typescript_ok, typescript = pcall(require, 'typescript')

-- It enables tsserver automatically so no need to call lspconfig.tsserver.setup
if typescript_ok then
  typescript.setup({})
  --[[ typescript.setup({ ]]
  --[[   disable_commands = false, -- prevent the plugin from creating Vim commands ]]
  --[[   debug = false, -- enable debug logging for commands ]]
  --[[   -- LSP Config options ]]
  --[[   server = { ]]
  --[[     capabilities = require('user.lsp.servers.tsserver').capabilities, ]]
  --[[     handlers = require('user.lsp.servers.tsserver').handlers, ]]
  --[[     on_attach = require('user.lsp.servers.tsserver').on_attach, ]]
  --[[     settings = require('user.lsp.servers.tsserver').settings, ]]
  --[[   } ]]
  --[[ }) ]]
end

--[[ THIS NEEDS WORK ]]
