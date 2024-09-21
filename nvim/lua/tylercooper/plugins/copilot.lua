return {
	"github/copilot.vim",
	event = "InsertEnter",
	config = function()
		-- Optional: Add any specific configuration you want here
		vim.g.copilot_no_tab_map = true -- Disables the default <Tab> behavior
		vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
		vim.g.copilot_filetypes = {
			["*"] = true, -- Enable Copilot for all file types
		}
	end,
}
