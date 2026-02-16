return {
	"HakonHarnes/img-clip.nvim",
	event = "VeryLazy",
	opts = {
		default = {
			use_absolute_path = false,
			relative_to_current_file = true,
			dir_path = function()
				return vim.fn.expand("%:t:r") .. "-img"
			end,
			prompt_for_file_name = false,
			file_name = "%Y-%m-%dT%H:%M:%S",
			extension = "avif",
			-- You HAVE to convert the images to the desired format
			-- if you don't specify the output format, you won't see the size decrease
			process_cmd = "convert - -quality 75 avif:-",
		},
		filetypes = {
			markdown = {
				-- encode spaces and special characters in file dir_path
				url_encode_path = true,
				-- This will dynamically configure the alternative text to show the
				-- same that you configured as the "file_name" above
				template = "![$FILE_NAME]($FILE_PATH)",
			},
		},
	},
	keys = {
		{ "<leader>v", "<cmd>PasteImage<CR>", desc = "Paste image from system clipboard" },
	},
}
