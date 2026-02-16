return {
	{
		"kiyoon/magick.nvim",
	},
	{
		"3rd/image.nvim",
		build = false,
		ft = { "markdown", "html", "css" },
		dependencies = { "kiyoon/magick.nvim" },
		opts = {
			backend = "kitty",
			integrations = {
				markdown = {
					enabled = true,
					clear_in_insert_mode = false,
					download_remote_images = true,
					only_render_image_at_cursor = true,
					filetypes = { "markdown" },
				},
				html = { enabled = true },
				css = { enabled = true },
			},
			max_height_window_percentage = 40,
			editor_only_render_when_focused = true,
			window_overlap_clear_enabled = false,
			hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp" },
		},
	},
}
