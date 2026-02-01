return {
	"norcalli/nvim-colorizer.lua",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		require("colorizer").setup({
			"css",
			"html",
			"javascript",
			"typescriptreact",
			"scss",
			"json",
		})
	end,
}
