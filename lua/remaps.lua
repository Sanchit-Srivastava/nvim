--move whole lines around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--maintain cursor positions
vim.keymap.set("n", "J", "mzJ`z")       --j does not move cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz") --keep cursor in middle of the screen while jumping.
vim.keymap.set("n", "<C-u>", "<C-u>zz") --keep cursor in middle of the screen while jumping.
vim.keymap.set("n", "n", "nzzzv")       --keep cursor in middle of the screen while searching.
vim.keymap.set("n", "N", "Nzzzv")       --keep cursor in middle of the screen while searching.

--copy things to system's clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d')

--get rid of Q! 
vim.keymap.set("n", "Q", "<nop>")--disables capital Q
