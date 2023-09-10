vim.g.mapleader = ";"
print("test")
vim.keymap.set("n", "<leader>pv", "<Cmd>:NvimTreeOpen<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-J>", "<C-W><C-J>")
vim.keymap.set("n", "<C-K>", "<C-W><C-K>")
vim.keymap.set("n", "<C-L>", "<C-W><C-L>")
vim.keymap.set("n", "<C-H>", "<C-W><C-H>")

vim.keymap.set("n", "<Leader>oq", "<Cmd>copen<CR>")
vim.keymap.set("n", "<Leader>nq", "<Cmd>cnext<CR>")
vim.keymap.set("n", "<Leader>pq", "<Cmd>cprevious<CR>")

vim.keymap.set("n", "<Leader>ol", "<Cmd>lopen<CR>")
vim.keymap.set("n", "<Leader>nl", "<Cmd>lnext<CR>")
vim.keymap.set("n", "<Leader>pl", "<Cmd>lprevious<CR>")

vim.keymap.set("n", "<", ",")
vim.keymap.set("n", ">", ";")

vim.keymap.set("n", "<Leader>ga", "<Cmd>ClangdSwitchSourceHeader<CR>")
