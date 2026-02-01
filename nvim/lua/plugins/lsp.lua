return {
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPost", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require("mason").setup({
				registries = {
					"github:mason-org/mason-registry",
					"github:Crashdummyy/mason-registry",
				},
			})

			require("mason-lspconfig").setup({
				ensure_installed = {
					"ts_ls",
					"lua_ls",
					"html",
					"cssls",
					"jsonls",
					"yamlls",
					"powershell_es",
				},
			})

			local lspconfig = require("lspconfig")

			lspconfig.ts_ls.setup({})

			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})

			lspconfig.html.setup({})
			lspconfig.cssls.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.yamlls.setup({})
			lspconfig.powershell_es.setup({})

			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					-- navigation
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = args.buf, desc = "go to definition" })
					vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = args.buf, desc = "find references" })
					vim.keymap.set(
						"n",
						"gi",
						vim.lsp.buf.implementation,
						{ buffer = args.buf, desc = "go to implementation" }
					)
					vim.keymap.set(
						"n",
						"gt",
						vim.lsp.buf.type_definition,
						{ buffer = args.buf, desc = "go to type definition" }
					)

					-- information
					vim.keymap.set("n", "gh", vim.lsp.buf.hover, { buffer = args.buf, desc = "hover documentation" })
					vim.keymap.set(
						"n",
						"gs",
						vim.lsp.buf.signature_help,
						{ buffer = args.buf, desc = "signature help" }
					)

					-- actions
					vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = args.buf, desc = "rename symbol" })
					vim.keymap.set(
						"n",
						"<leader>ca",
						vim.lsp.buf.code_action,
						{ buffer = args.buf, desc = "code action" }
					)
					vim.keymap.set("n", "<leader>oi", function()
						vim.lsp.buf.code_action({
							apply = true,
							context = {
								only = { "source.removeUnusedImports" },
								diagnostics = {},
							},
						})
					end, { buffer = args.buf, desc = "organize imports " })

					-- diagnostics
					vim.keymap.set(
						"n",
						"<leader>dd",
						vim.diagnostic.open_float,
						{ buffer = args.buf, desc = "show diagnostic" }
					)
					vim.keymap.set(
						"n",
						"gnd",
						vim.diagnostic.goto_next,
						{ buffer = args.buf, desc = "go to next diagnostic" }
					)
					vim.keymap.set(
						"n",
						"gpd",
						vim.diagnostic.goto_prev,
						{ buffer = args.buf, desc = "go to previous diagnostic" }
					)
				end,
			})
		end,
	},
}
