return {
	{
		"L3MON4D3/LuaSnip",
		config = function()
			require("luasnip").setup({
				-- Здесь можно добавить настройки для LuaSnip
				history = true,
				updateevents = "TextChanged,TextChangedI",
			})
		end,
	},
	{
		"rafamadriz/friendly-snippets",
		config = function()
			-- Подключаем friendly-snippets
			require("luasnip.loaders.from_vscode").lazy_load() -- Загружаем сниппеты из friendly-snippets
		end,
	},
}
