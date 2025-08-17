return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		local bg = true
		local toggle = function()
			bg = not bg
			require("catppuccin").setup({
				flavour = "mocha",

				transparent_background = bg,
			})
			vim.cmd.colorscheme("catppuccin")
		end

        vim.keymap.set("n", "<leader>bg", toggle, {})

		require("catppuccin").setup({
			flavour = "mocha",

			transparent_background = true,
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
