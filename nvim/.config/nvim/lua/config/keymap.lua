-- Normal mode
vim.keymap.set("n", "H", "0")
vim.keymap.set("n", "L", "$")
vim.keymap.set("n", "<leader>a", "ggVG")

vim.keymap.set("n", "<leader>wh", "<C-w>h")
vim.keymap.set("n", "<leader>wl", "<C-w>l")
vim.keymap.set("n", "<leader>wj", "<C-w>j")
vim.keymap.set("n", "<leader>wk", "<C-w>k")

vim.keymap.set("n", "<leader>th", "gT")
vim.keymap.set("n", "<leader>tl", "gt")

vim.keymap.set("n", "<C-h>", ":bprev<cr>", { silent = true })
vim.keymap.set("n", "<C-l>", ":bnext<cr>", { silent = true })

vim.keymap.set("n", "<esc><esc>", ":nohl<cr>", { silent = true })

-- Insert mode
vim.keymap.set("i", "jj", "<esc>")

-- Visual mode
vim.keymap.set("v", "v", "<C-v>")
