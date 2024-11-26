--Leader is space key
vim.g.mapleader = " "

--Line numbering : using hybrid for now
vim.opt.nu = true
vim.opt.rnu = true

-- Indenting
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

--backup and undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = "~/.config/nvim/.undo//"
vim.opt.undofile = true

--vim search options
vim.opt.hlsearch = false
vim.opt.incsearch = true

--colourse
vim.opt.termguicolors = true

--scrollingc
vim.opt.scrolloff = 8

--random
--vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
--vim.opt.colorcolumn = "80"
vim.opt.splitright = true

-- Open help files in a vertical split
vim.api.nvim_create_autocmd("FileType", {
    pattern = "help",
    callback = function()
        local width = math.floor(vim.o.columns * 0.3) -- 30% of total width
        vim.cmd("wincmd L | vertical resize " .. width)
    end,
})

-- Open git in a vertical split
vim.api.nvim_create_autocmd("FileType", {
    pattern = "fugitive",
    callback = function()
        local width = math.floor(vim.o.columns * 0.3) -- 30% of total width
        vim.cmd("wincmd L | vertical resize " .. width)
    end,
})

--Vimtex options
vim.cmd("set encoding=utf-8")
vim.cmd("filetype plugin on")
vim.g.vimtex_quickfix_mode = 0
vim.g.vimtex_log_verbose = 0
