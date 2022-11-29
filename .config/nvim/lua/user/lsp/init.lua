local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lsp.mason"
require "user.lsp.null-ls"
require ('mason-null-ls').setup({
    ensure_installed = {'stylua', 'prettier', }
})

require("lspconfig").tsserver.setup {}
--[[ require "user.lsp.typescript" ]]

