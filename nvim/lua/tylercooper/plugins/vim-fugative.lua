-- vim_fugitive.lua

-- Ensure vim-fugitive is installed as a plugin
return {
	"tpope/vim-fugitive",
	config = function()
		-- Keybindings for Vim-Fugitive
		vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>gc", ":Git commit<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>gp", ":Git push<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>gl", ":Git pull<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>gb", ":Git blame<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>gd", ":Gdiffsplit<CR>", { noremap = true, silent = true })
	end,
}
