return {
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup({
				toggler = {
					line = "gcc", -- Команда для комментирования строки
					block = "gbc", -- Команда для комментирования блока
				},
				opleader = {
					line = "gc", -- Оператор для комментирования в визуальном режиме
					block = "gb", -- Оператор для блочного комментирования
				},
			})
		end,
	},
}
