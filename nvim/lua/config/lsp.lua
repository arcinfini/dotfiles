
-- Mason installs and manages LSPs, DAPS, Linters and Formatters
-- lspconfig communicates with the neovim lsp client
-- mason-lspconfig automates the setting up LSPs for lspconfig to then use

-- If I wanted to organize/overcomplicate this, I should create an object
-- with setup functions for all of my mason content. Then return it
-- to be loaded in and configured in my plugins/mason.lua file

require('mason').setup()
require('mason-lspconfig').setup {
    ensure_installed = { 'lua_ls', 'rust_analyzer', 'pylsp' }
}

-- For lsp specific documentation go to
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspc = require('lspconfig')

lspc.lua_ls.setup { capabilities = capabilities }
lspc.pylsp.setup { capabilities = capabilities }

