local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics
null_ls.setup(
  {
	debug = false,
	sources = {
		formatting.prettier,
		-- formatting.black.with({ extra_args = { "--fast" } }),
		diagnostics.eslint_d,
    -- diagnostics.flake8

    require("typescript.extensions.null-ls.code-actions"),
	},
     -- you can reuse a shared lspconfig on_attach callback here
    on_attach = function(client)
        --[[ if client.server_capabilities.document_formatting then ]]
            vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.format()
            augroup END
            ]])
        --[[ end ]]
    end,
}
)

