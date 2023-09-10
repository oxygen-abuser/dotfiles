local lsp = require('lsp-zero').preset("recommended")
lsp.ensure_installed({
    'clangd',
    'rust_analyzer',
    'eslint',
    'cmake',
    'hsl'
})

lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp.default_keymaps({ buffer = bufnr })

    if client == "clangd" then
        vim.keymap.set("n", "<Leader>ga", "<Cmd>ClangdSwitchSourceHeader<CR>")
    end
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
-- s - show.
vim.keymap.set("n", "<Leader>sh", vim.lsp.buf.hover)
vim.keymap.set("n", "<Leader>si", vim.lsp.buf.signature_help)
vim.keymap.set("n", "<Leader>sd", vim.diagnostic.open_float)

-- g - go.
vim.keymap.set("n", "<Leader>gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "<Leader>gt", vim.lsp.buf.type_definition)
vim.keymap.set("n", "<Leader>gI", vim.lsp.buf.implementation)
vim.keymap.set("n", "<Leader>gn", vim.diagnostic.goto_next)
vim.keymap.set("n", "<Leader>gp", vim.diagnostic.goto_prev)

-- d - do
vim.keymap.set("n", "<Leader>di", vim.lsp.buf.code_action)
vim.keymap.set("n", "<Leader>dr", vim.lsp.buf.rename)
vim.keymap.set({ "n", "v" }, "<Leader>df", vim.lsp.buf.format)

lsp.setup()

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    },
    mapping = {
        ['<C-j>'] = cmp_action.luasnip_jump_forward(),
        ['<C-k>'] = cmp_action.luasnip_jump_backward(),
    }
})
