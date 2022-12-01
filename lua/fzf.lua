local n_keymap = function(map, func)
    vim.api.nvim_set_keymap('n', map, "<cmd>lua require('fzf-lua')." .. func .. "()<CR>", { noremap = true, silent = true })
end

n_keymap("<leader>ff", "files")
n_keymap("<leader>fb", "buffers")
n_keymap("<leader>fl", "loclist")
n_keymap("<leader>fq", "quickfix")
n_keymap("<leader>ft", "tabs")

-- vim.api.nvim_set_keymap('n', '<c-P>',
--     "<cmd>lua require('fzf-lua').files()<CR>",
--     { noremap = true, silent = true })
--
-- buffers	open buffers
-- files	find or fd on a path
-- oldfiles	opened files history
-- quickfix	quickfix list
-- loclist	location list
-- lines	open buffers lines
-- blines	current buffer lines
-- tabs	open tabs
-- args	argument list
n_keymap("<leader>fg", "live_grep")
