-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
	{
		"theprimeagen/harpoon",
		lazy = false,
		config = function()
			local mark = require("harpoon.mark")
			local ui = require("harpoon.ui")

			vim.keymap.set("n", "<leader>a", mark.add_file)
			vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

			vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
			vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
			vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
			vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
		end
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			Color = Color or "rose-pine"
			vim.cmd.colorscheme(Color)
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		end
	},
	{
		'iamcco/markdown-preview.nvim',
		build = function() vim.fn['mkdp#util#install']() end,
		config = function()
			vim.g.mkdp_browser = "/usr/bin/firefox"
		end,
		ft = { 'markdown' }

	},
	{
		"mbbill/undotree",
		config = function()
			vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
		end
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		event = "BufReadPre",
		dependencies = {
			{
				"nvim-lua/plenary.nvim",
				lazy = true,
			},
		},

	},
	{
		'scrooloose/nerdcommenter',
	},

	{
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	},
	{
		-- amongst your other plugins
		'akinsho/toggleterm.nvim',
		version = "*",
		config = true,
		-- or
	},
	{
		'eandrju/cellular-automaton.nvim',
	},


}
