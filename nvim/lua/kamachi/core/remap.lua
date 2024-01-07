vim.g.mapleader = ' '

----------------------------------------------
-- ESSENTIAL REMAP
----------------------------------------------
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

----------------------------------------------
-- PLUGIN REMAP
----------------------------------------------
vim.keymap.set('n', '<leader>q', vim.cmd.NvimTreeToggle)
vim.keymap.set('n', '<leader>w', vim.cmd.NvimTreeFocus)
format = function(args)
	require("conform").format({ bufnr = vim.api.nvim_buf_get_name(0) })
end
vim.keymap.set('n', '<leader>f', format)
