return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			view_options = {
				show_hidden = true,
			},
			keymaps = {
				["q"] = "actions.close",
				["<C-p>"] = false, -- disable default preview
			},
		})

		-- open parent directory
		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "open parent directory" })
	end,
}
