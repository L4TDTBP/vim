return {
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			require("gitsigns").setup({
				signs = {
					add = { text = "|" },
					change = { text = "|" },
					delete = { text = "_" },
					topdelete = { text = "‾" },
					changedelete = { text = "~" },
				},
				on_attach = function(bufnr)
					local gs = package.loaded.gitsigns
					local opts = { buffer = bufnr }

					-- navigate between hunks
					vim.keymap.set("n", "gnh", gs.next_hunk, { buffer = bufnr, desc = "go to next hunk" })
					vim.keymap.set("n", "gph", gs.prev_hunk, { buffer = bufnr, desc = "go to previous hunk" })

					-- actions
					vim.keymap.set("n", "<leader>hs", gs.stage_hunk, { buffer = bufnr, desc = "stage hunk" })
					vim.keymap.set("n", "<leader>hr", gs.reset_hunk, { buffer = bufnr, desc = "reset hunk" })
					vim.keymap.set("n", "<leader>hp", gs.preview_hunk, { buffer = bufnr, desc = "preview hunk" })
					vim.keymap.set("n", "<leader>hb", gs.blame_line, { buffer = bufnr, desc = "blame line" })
				end,
			})
		end,
	},
}
