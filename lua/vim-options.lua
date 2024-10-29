vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.background = "light"

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- save files
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- New File
vim.keymap.set("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })


vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.wo.number = true

local api = vim.api

api.nvim_set_keymap("n", "<C-c>", "gtc", { noremap = false })
api.nvim_set_keymap("v", "<C-c>", "goc", { noremap = false })
