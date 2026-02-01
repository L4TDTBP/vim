return {
	"nvim-treesitter/nvim-treesitter-textobjects",
	event = { "BufReadPost", "BufNewFile" },
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		require("nvim-treesitter.configs").setup({
			textobjects = {
				-- select code-blocks
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["af"] = { query = "@function.outer", desc = "around function" },
						["if"] = { query = "@function.inner", desc = "inner function" },
						["ac"] = { query = "@class.outer", desc = "around class" },
						["ic"] = { query = "@class.inner", desc = "inner class" },
						["aa"] = { query = "@parameter.outer", desc = "around argument" },
						["ia"] = { query = "@parameter.innter", desc = "inner argument" },
					},
				},
				-- navigate to code-blocks
				move = {
					enable = true,
					set_jumps = true,
					goto_next_start = {
						["gnm"] = { query = "@function.outer", desc = "next method start" },
						["gnc"] = { query = "@class.outer", desc = "next class start" },
					},
					goto_previous_start = {
						["gpm"] = { query = "@function.outer", desc = "previous method start" },
						["gpc"] = { query = "@class.outer", desc = "previous class start" },
					},
				},
			},
		})
	end,
}
