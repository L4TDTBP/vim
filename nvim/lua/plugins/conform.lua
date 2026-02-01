return {
	"stevearc/conform.nvim",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		require("conform").setup({
			-- formatter pro dateityp
			formatters_by_ft = {
				lua = { "stylua" },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				typescriptreact = { "prettierd", "prettier", stop_after_first = true },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				javascriptreact = { "prettierd", "prettier", stop_after_first = true },
				json = { "prettier" },
				html = { "prettier" },
				css = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				csharp = { "csharpier" },
			},
			-- format on save
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		})

		-- manuelles formatieren mit keymap
		vim.keymap.set("n", "<leader>cf", function()
			require("conform").format({ async = true, lsp_fallback = true })
		end, { desc = "format buffer" })
	end,
}
