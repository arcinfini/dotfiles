vim.g._start_time = vim.uv.hrtime()

vim.opt.termguicolors = true
vim.g.have_nerd_font = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Check QuickRef for list of options. The list is not complete however

vim.opt.breakindent = true
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4 -- this is the one that finally made tabs 4 spaces
vim.opt.linebreak = true

vim.opt.number = true
vim.opt.scrolloff = 10

require("core.lazy")
require("lazy").setup({
    spec = {
        { import = "plugins" },
        { import = "plugins.lsp" },
        { import = "plugins.mini" },
    },
})

require("core.mappings")
require("core.theme")
