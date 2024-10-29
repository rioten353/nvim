vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.background = "light"

vim.opt.swapfile = false

local map = vim.keymap.set

map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "toggle line number" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })

-- Lsp keymap
map("n", "<leader>K", vim.lsp.buf.hover, { desc = 'Lsp hover' })
map("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Lsp definition" })
map("n", "<leader>gr", vim.lsp.buf.references, { desc = "Lsp references" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = 'Code Action' })

-- Neo Tree
map("n", "<leader>e", ":Neotree filesystem reveal left<CR>", { desc = "File Explorer" })
map("n", "<leader>bf", ":Neotree buffers reveal float<CR>", { desc = "Buffer Explorer" })


-- Navigate vim panes better
map("n", "<c-k>", ":wincmd k<CR>")
map("n", "<c-j>", ":wincmd j<CR>")
map("n", "<c-h>", ":wincmd h<CR>")
map("n", "<c-l>", ":wincmd l<CR>")

-- save files
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- New File
map("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })


map("n", "<leader>h", ":nohlsearch<CR>")
vim.wo.number = true

local api = vim.api

api.nvim_set_keymap("n", "<C-c>", "gtc", { desc = "Toggle Comment", noremap = false })
api.nvim_set_keymap("v", "<C-c>", "goc", { desc = "Toggle Comment", noremap = false })
