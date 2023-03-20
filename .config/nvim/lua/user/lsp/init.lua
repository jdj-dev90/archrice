local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end



require "user.lsp.mason"
require "user.lsp.null-ls"
require "user.lsp.rust-tools"

require('mason-null-ls').setup({
	ensure_installed = { 'stylua', 'prettier' }
})

require("lspconfig").tsserver.setup {}


require("lspconfig").sumneko_lua.setup {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
}
--[[ require "user.lsp.typescript" ]]
