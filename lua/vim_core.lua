vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set relativenumber")
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("imap jj <ESC>")

vim.g.mapleader = " "
 -- Set clear to false to run multiple times
local tab_size_for_file = vim.api.nvim_create_augroup("TabSizeForFile", { clear = true })

vim.api.nvim_create_autocmd("BufEnter", {
  command = "set shiftwidth=4",
  group = tab_size_for_file,
 pattern = "*"
})

vim.api.nvim_create_autocmd("BufEnter", {
  command = "set shiftwidth=2",
  group = tab_size_for_file,
  pattern = "*.lua"
})

vim.api.nvim_create_autocmd("BufEnter", {
  command = "set shiftwidth=2",
  group = tab_size_for_file,
  pattern = "*.html"
})

vim.api.nvim_create_autocmd("BufEnter", {
  command = "set shiftwidth=2",
  group = tab_size_for_file,
  pattern = "*.ts"
})

vim.api.nvim_create_autocmd("BufEnter", {
  command = "set shiftwidth=2",
  group = tab_size_for_file,
  pattern = "*.jsx"
})

vim.api.nvim_create_autocmd("BufEnter", {
  command = "set shiftwidth=2",
  group = tab_size_for_file,
  pattern = "*.tsx"
})

vim.api.nvim_create_autocmd("BufEnter", {
  command = "set shiftwidth=2",
  group = tab_size_for_file,
  pattern = "*.css"
})

vim.keymap.set("n", "<leader>w", ":w<CR>", {})
vim.keymap.set("n", "<leader>q", ":q<CR>", {})
vim.keymap.set("n", "<leader>Q", ":q!<CR>", {})
vim.keymap.set("v", "<C-c>", ':"+y<CR>', {})
