
-- Install mason and list its depdendencies
-- Setup and more is handled in lsp.lua

return {
    {
        'williamboman/mason.nvim',
        dependencies = {
            { 'williamboman/mason-lspconfig.nvim' },
            { 'neovim/nvim-lspconfig' }
        }
    }
}
