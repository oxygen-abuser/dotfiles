local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>t', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- Telescope
vim.keymap.set("n", "<Leader>gr", builtin.lsp_references)
vim.keymap.set("n", "<Leader>gd", builtin.lsp_definitions)
vim.keymap.set("n", "<Leader>gi", builtin.lsp_implementations)
vim.keymap.set("n", "<Leader>ss", builtin.lsp_document_symbols)
vim.keymap.set("n", "<Leader>sS", builtin.lsp_dynamic_workspace_symbols)
local vis_selection = function()
    local _, ls, cs = unpack(vim.fn.getpos "v") -- visual selection start
    local _, le, ce = unpack(vim.fn.getpos ".") -- visual selection end
    return table.concat(vim.api.nvim_buf_get_text(0, ls - 1, cs - 1, le - 1, ce, {}))
end

-- s - show
vim.keymap.set("n", "<Leader>sb", builtin.buffers)
vim.keymap.set("n", "<Leader>sr", builtin.registers)
vim.keymap.set("n", "<Leader>sj", builtin.jumplist)
vim.keymap.set("n", "<Leader>sD", function()
    builtin.diagnostics { bufnr = 0 }
end)
vim.keymap.set("n", "<Leader>st", builtin.resume)
-- f- find
vim.keymap.set("n", "<Leader>t", builtin.find_files)
vim.keymap.set("n", "<Leader>fg", function()
    builtin.live_grep { path_display = { "shorten" } }
end)
vim.keymap.set("v", "<Leader>fg", function()
    builtin.grep_string { search = vis_selection(), word_match = "-w", path_display = { "truncate" } }
end)
vim.keymap.set("n", "<Leader>fb", builtin.current_buffer_fuzzy_find)
vim.keymap.set("v", "<Leader>fb", function()
    builtin.current_buffer_fuzzy_find { default_text = vis_selection() }
end)
vim.keymap.set("n", "<Leader>fh", builtin.help_tags)
