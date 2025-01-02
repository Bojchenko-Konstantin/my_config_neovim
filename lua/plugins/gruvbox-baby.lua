-- return {
-- 	"luisiacc/gruvbox-baby",
-- 	config = function()
-- 		require("catppuccin").setup({
-- 		flavour = "macchiato",
-- 	})
-- 	vim.cmd("colorscheme catppuccin")
-- end
-- }
--

return {
	"luisiacc/gruvbox-baby",
	config = function()
		-- Настройка gruvbox-baby
		vim.g.gruvbox_baby_function_style = "NONE" -- Устанавливаем стиль для функций
		vim.g.gruvbox_baby_keyword_style = "NONE" -- Устанавливаем стиль для ключевых слов
		vim.g.gruvbox_baby_variable_style = "NONE" -- Устанавливаем стиль для переменных
		vim.g.gruvbox_baby_comments_style = "NONE" -- Устанавливаем стиль для комментариев
		vim.g.gruvbox_baby_background_color = "dark" -- Устанавливаем цвет фона (dark или light)

		-- Включение темы
		vim.cmd("colorscheme gruvbox-baby")
	end,
}
