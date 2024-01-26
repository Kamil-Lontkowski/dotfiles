vim.g.mapleader = ' '

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- lets you move highlighted lines
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]]) -- yank to system clip board
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- substitute word on cursor in whole file

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]]) -- delete, don't get that into register
vim.keymap.set("x", "<leader>p", [["_dP]]) -- paste over, don't get that into register

vim.keymap.set("", "<leader>ee", "<cmd>NERDTreeToggle<CR>")
vim.keymap.set("", "<leader>ef", "<cmd>NERDTreeFind<CR>")

vim.keymap.set("", "<Leader>bl", ":buffers<CR>:buffer<Space>")
vim.keymap.set("", "<Leader>bd", ":buffers<CR>:bd<Space>")

vim.keymap.set("", "<leader>R", ":belowright split term://")
