return {
	{
		"williamboman/mason.nvim",
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
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.awk_ls.setup({})
			lspconfig.bashls.setup({})
			lspconfig.ast_grep.setup({})
			lspconfig.clangd.setup({})
			lspconfig.harper_ls.setup({})
			lspconfig.css_variables.setup({})
			lspconfig.cssls.setup({})
			lspconfig.cssmodules_ls.setup({})
			lspconfig.tailwindcss.setup({})
			lspconfig.unocss.setup({})
			lspconfig.docker_compose_language_service.setup({})
			lspconfig.dockerls.setup({})
			lspconfig.html.setup({})
			lspconfig.lwc_ls.setup({})
			lspconfig.superhtml.setup({})
			lspconfig.eslint.setup({})
			lspconfig.biome.setup({})
			lspconfig.ts_ls.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.ruff.setup({})
			lspconfig.sqlls.setup({})
			lspconfig.sqls.setup({})
			lspconfig.vimls.setup({})
			lspconfig.hydra_lsp.setup({})
			lspconfig.yamlls.setup({})


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
					return string.format("%s (%s) [%s]", diagnostic.message, diagnostic.source, diagnostic.code or diagnostic.user_data.lsp.code)
				end
			}
		})
		end
	}
}
