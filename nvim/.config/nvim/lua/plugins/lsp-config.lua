return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"awk_ls",
					"bashls",
					"ast_grep",
					"clangd",
					"harper_ls",
					"css_variables",
					"cssls",
					"cssmodules_ls",
					"tailwindcss",
					"unocss",
					"docker_compose_language_service",
					"dockerls",
					"html",
					"lwc_ls",
					"superhtml",
					"eslint",
					"biome",
					"ts_ls",
					"jsonls",
					"ruff",
					"sqlls",
					"sqls",
					"vimls",
					"hydra_lsp",
					"yamlls"
				}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities
			})
			lspconfig.awk_ls.setup({
				capabilities = capabilities
			})
			lspconfig.bashls.setup({
				capabilities = capabilities
			})
			lspconfig.ast_grep.setup({
				capabilities = capabilities
			})
			lspconfig.clangd.setup({
				capabilities = capabilities
			})
			lspconfig.harper_ls.setup({
				capabilities = capabilities
			})
			lspconfig.css_variables.setup({
				capabilities = capabilities
			})
			lspconfig.cssls.setup({
				capabilities = capabilities
			})
			lspconfig.cssmodules_ls.setup({
				capabilities = capabilities
			})
			lspconfig.tailwindcss.setup({
				capabilities = capabilities
			})
			lspconfig.unocss.setup({
				capabilities = capabilities
			})
			lspconfig.docker_compose_language_service.setup({
				capabilities = capabilities
			})
			lspconfig.dockerls.setup({
				capabilities = capabilities
			})
			lspconfig.html.setup({
				capabilities = capabilities
			})
			lspconfig.lwc_ls.setup({
				capabilities = capabilities
			})
			lspconfig.superhtml.setup({
				capabilities = capabilities
			})
			lspconfig.eslint.setup({
				capabilities = capabilities
			})
			lspconfig.biome.setup({
				capabilities = capabilities
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities
			})
			lspconfig.jsonls.setup({
				capabilities = capabilities
			})
			lspconfig.ruff.setup({
				capabilities = capabilities
			})
			lspconfig.sqlls.setup({
				capabilities = capabilities
			})
			lspconfig.sqls.setup({
				capabilities = capabilities
			})
			lspconfig.vimls.setup({
				capabilities = capabilities
			})
			lspconfig.hydra_lsp.setup({
				capabilities = capabilities
			})
			lspconfig.yamlls.setup({
				capabilities = capabilities
			})


			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup('UserLspConfig', {}),
				callback = function(ev)
					vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
					local opts = {buffer = ev.buf}
					vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
					vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, opts)
				end
			})
			vim.diagnostic.config({
				virtual_text = {
					prefix = "!",
					format = function(diagnostic)
						return string.format("%s (%s) [%s]", diagnostic.message, diagnostic.source, diagnostic.code)
						-- return string.format("%s (%s) [%s]", diagnostic.message, diagnostic.source, diagnostic.code or diagnostic.user_data.lsp.code)
					end
				}
			})
		end
	}
}
