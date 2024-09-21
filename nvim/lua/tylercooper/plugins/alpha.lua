-- Lazy.nvim plugin setup
return {
	{
		"goolord/alpha-nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons", -- for file icons
		},
		config = function()
			-- Import alpha and dashboard
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")

			-- Set header
			dashboard.section.header.val = {
				"                           ",
				"▄▄▄█████▓  ██████  ▄████▄  ",
				"▓  ██▒ ▓▒▒██    ▒ ▒██▀ ▀█  ",
				"▒ ▓██░ ▒░░ ▓██▄   ▒▓█    ▄ ",
				"░ ▓██▓ ░   ▒   ██▒▒▓▓▄ ▄██▒",
				"  ▒██▒ ░ ▒██████▒▒▒ ▓███▀ ░",
				"  ▒ ░░   ▒ ▒▓▒ ▒ ░░ ░▒ ▒  ░",
				"    ░    ░ ░▒  ░ ░  ░  ▒   ",
				"  ░      ░  ░  ░  ░        ",
				"               ░  ░ ░      ",
				"                  ░        ",
				"                           ",
			}

			-- Set menu
			dashboard.section.buttons.val = {
				dashboard.button("<C-e>", "  > New file", ":ene <BAR> startinsert <CR>"),
				dashboard.button("<C-f>", "  > Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
				dashboard.button("<C-r>", "  > Recent", ":Telescope oldfiles<CR>"),
				dashboard.button("<C-s>", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
				dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
			}

			-- (Optional) Set footer if fortune is used (PR or custom version needed)
			-- local fortune = require("alpha.fortune")
			-- dashboard.section.footer.val = fortune()

			-- Send config to alpha
			alpha.setup(dashboard.opts)

			-- Disable folding on alpha buffer
			vim.cmd([[
                autocmd FileType alpha setlocal nofoldenable
            ]])
		end,
	},
}
