return {
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
			local wk = require("which-key")

			cmp.setup({
				snippet = {
					expand = function(args)
						vim.fn["vsnip#anonymous"](args.body) -- Для пользователей vsnip.
						require("luasnip").lsp_expand(args.body) -- Для пользователей luasnip.
						require("snippy").expand_snippet(args.body) -- Для пользователей snippy.
						vim.fn["UltiSnips#Anon"](args.body) -- Для пользователей ultisnips.
						vim.snippet.expand(args.body) -- Для нативных сниппетов Neovim (Neovim v0.10+)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
					["<Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						else
							fallback()
						end
					end, { "i", "s" }),
					["<S-Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						else
							fallback()
						end
					end, { "i", "s" }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "vsnip" }, -- Для пользователей vsnip.
					{ name = "luasnip" }, -- Для пользователей luasnip.
					{ name = "ultisnips" }, -- Для пользователей ultisnips.
					{ name = "snippy" }, -- Для пользователей snippy.
				}, {
					{ name = "buffer" },
				}),
			})

			-- Регистрация клавиш для управления автозаполнением
			wk.add({
				{ "<leader>c", group = "Completion" }, -- группа
				{
					"<leader>cc",
					function()
						cmp.complete()
					end,
					desc = "Trigger Completion",
				},
				{
					"<leader>cf",
					function()
						cmp.mapping.scroll_docs(-4)
					end,
					desc = "Scroll Docs Up",
				},
				{
					"<leader>cb",
					function()
						cmp.mapping.scroll_docs(4)
					end,
					desc = "Scroll Docs Down",
				},
				{
					"<leader>ca",
					function()
						cmp.mapping.abort()
					end,
					desc = "Abort Completion",
				},
				{
					"<leader>cr",
					function()
						cmp.mapping.confirm({ select = true })
					end,
					desc = "Confirm Selection",
				},
			})
		end,
	},
}
