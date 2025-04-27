return {
	"akinsho/bufferline.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers",
				themable = true,
				numbers = "none",
				close_command = "bdelete %d",
				close_icon = "",
				buffer_close_icon = "",
				path_components = 1,
				max_name_length = 30,
				tab_size = 21,
				diagnostics = false,
				diagnostics_update_in_insert = false,
				color_icons = true,
				show_buffer_icons = true,
				show_buffer_close_icons = false,
				show_close_icon = false,
				highlights = {
					separator = {
						fg = "#434343",
					},
					buffer_selected = {
						bold = true,
						italic = false,
					},
				},
			},
		})
	end,
}
