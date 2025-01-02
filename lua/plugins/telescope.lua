return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({})

		local builtin = require("telescope.builtin")
		local wk = require("which-key")

		-- Регистрация клавиш с использованием which-key
		wk.add({
			{ "<leader>f", group = "Telescope" }, -- группа
			{
				"<leader>ff",
				function()
					builtin.find_files()
				end,
				desc = "Find File",
			},
			{
				"<leader>fw",
				function()
					builtin.live_grep()
				end,
				desc = "Live Grep",
			},
			{
				"<leader>fb",
				function()
					builtin.buffers()
				end,
				desc = "Buffers",
			},
			{
				"<leader>fh",
				function()
					builtin.help_tags()
				end,
				desc = "Help Tags",
			},
		})
	end,
}
