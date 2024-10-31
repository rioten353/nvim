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

-- none-ls
map("n", "<leader>gf", vim.lsp.buf.format, { desc = "format file" })

-- telescope
local builtin = require("telescope.builtin")
map("n", "<leader>fp", builtin.find_files, { desc = 'Find Files' })
map("n", "<leader>fg", builtin.live_grep, { desc = 'Live Grep' })
map("n", "<leader><leader>", builtin.oldfiles, { desc = "Find Old Files" })

-- toggle-term
map("n", "<leader>rt", ":ToggleTerm direction=float size=30<CR>")

-- Navigate vim panes better
map("n", "<c-k>", ":wincmd k<CR>")
map("n", "<c-j>", ":wincmd j<CR>")
map("n", "<c-h>", ":wincmd h<CR>")
map("n", "<c-l>", ":wincmd l<CR>")

-- test
map("n", "<leader>t", ":TestNearest<CR>", { desc = "TestNearest" })
map("n", "<leader>T", ":TestFile<CR>", { desc = "TestFile" })
map("n", "<leader>a", ":TestSuite<CR>", { desc = "TestSuite" })
map("n", "<leader>l", ":TestLast<CR>", { desc = "TestLast" })
map("n", "<leader>g", ":TestVisit<CR>", { desc = "TestVisit" })
vim.cmd("let test#strategy = 'vimux'")

--Todo 
map("n", "<leader>I", ":TodoTelescope<CR>", {desc="TodoTelescope"})

-- save files
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- New File
map("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

--alpha
map("n", "<leader>h", ":Alpha<CR>", {desc="Alpha"})

local api = vim.api

api.nvim_set_keymap("n", "<C-c>", "gtc", { desc = "Toggle Comment", noremap = false })
api.nvim_set_keymap("v", "<C-c>", "goc", { desc = "Toggle Comment", noremap = false })
