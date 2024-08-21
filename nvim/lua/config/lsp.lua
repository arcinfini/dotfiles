
require('mason').setup()
require('mason-lspconfig').setup {
    ensure_installed = { 'lua_ls', 'rust_analyzer' }
}

local lspc = require('lspconfig')

lspc.lua_ls.setup {}

