return {
	{
		"mfussenegger/nvim-dap",
		config = function()
			local dap = require("dap")

			-- Пример настройки для Python
			dap.adapters.python = {
				type = "executable",
				command = "python",
				args = { "-m", "debugpy.adapter" },
			}

			dap.configurations.python = {
				{
					type = "python", -- тип адаптера
					request = "launch", -- запрос
					name = "Launch file", -- имя конфигурации
					program = "${file}", -- программа для запуска
					pythonPath = function()
						return "/usr/bin/python" -- путь к интерпретатору Python
					end,
				},
			}

			-- Пример настройки для JavaScript с использованием node2
			dap.adapters.node2 = {
				type = "executable",
				command = "node",
				args = { os.getenv("HOME") .. "/path/to/vscode-node-debug2/out/src/nodeDebug.js" }, -- Укажите правильный путь
			}

			dap.configurations.javascript = {
				{
					type = "node2",
					request = "launch",
					name = "Launch Program",
					program = "${file}",
				},
			}

			-- Можно добавить дополнительные настройки для других языков и адаптеров
		end,
	},
}
