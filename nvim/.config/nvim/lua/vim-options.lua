vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.o.wrap = false
vim.o.linebreak = true

vim.o.autoindent = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.scrolloff = 4
vim.o.sidescrolloff = 8

vim.o.cmdheight = 1

vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "<c-u>", "<c-u>zz")

vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

vim.keymap.set("n", "<M-c-h>", ":vertical resize -1<CR>")
vim.keymap.set("n", "<M-c-j>", ":resize +1<CR>")
vim.keymap.set("n", "<M-c-k>", ":resize -1<CR>")
vim.keymap.set("n", "<M-c-l>", ":vertical resize +1<CR>")

vim.keymap.set("n", "<Tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>")
vim.keymap.set("n", "<leader>x", ":bdelete<CR>")

vim.keymap.set("n", "<leader>v", "<c-w>v")
vim.keymap.set("n", "<leader>n", "<c-w>s")
vim.keymap.set("n", "<leader>se", "<c-w>=")
vim.keymap.set("n", "<leader>xs", ":close<CR>")

vim.keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>")

vim.keymap.set("v", "p", '"_dP')

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)

vim.keymap.set("n", "<leader>s", ":w<CR>")
