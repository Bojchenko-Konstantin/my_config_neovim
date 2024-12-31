-- Line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Colors
-- vim.opt.cursorline = true           
vim.opt.termguicolors = true

-- Mouse
vim.opt.mouse = "a"
vim.opt.mousefocus = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Indent Settings
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- Other
vim.opt.scrolloff = 8
vim.opt.wrap = false

-- Fillchars
vim.opt.fillchars = {
	vert = "│",
	fold = "⠀",
	eob = " ", -- suppress ~ at EndOfBuffer
	-- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
	msgsep = "‾",
	foldopen = "▾",
	foldsep = "│",
	foldclose = "▸",
}
