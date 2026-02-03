return {
	"saghen/blink.cmp",
	version = "1.*",
	event = "InsertEnter",
	dependencies = {
		-- snippet engine
		"rafamadriz/friendly-snippets",
	},
	config = function()
		require("blink.cmp").setup({
			keymap = {
				preset = "none",
				-- navigation in completion menu
				["<C-j>"] = { "select_next", "fallback" },
				["<C-k>"] = { "select_prev", "fallback" },
				-- confirm
				["<CR>"] = { "accept", "fallback" },
				-- cancel
				["<C-e>"] = { "cancel", "fallback" },
				-- scroll documentation
				["<C-d>"] = { "scroll_documentation_down", "fallback" },
				["<C-u>"] = { "scroll_documentation_up", "fallback" },
			},
			completion = {
				-- show automatically during typing
				list = {
					selection = {
						preselect = true,
						auto_insert = false,
					},
				},
				-- documentation popup
				documentation = {
					auto_show = true,
					auto_show_delay_ms = 200,
				},
				-- ghost text (shows inline preview)
				ghost_text = {
					enabled = true,
				},
			},
			-- completion sources
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
		})
	end,
}
