

return {
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'L3MON4D3/LuaSnip'
        },
        init = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            require('lspconfig')['lua_ls'].setup {
                capabilities = capabilities
            }
        end,
        opts = {
            snippet = {
                expand = function(args)
                    -- vim.snippet.expand(args.body)
                    require('luasnip').lsp_expand(args.body)
                end
            },
            sources = {
                { name = 'nvim_lsp' },
                { name = 'luasnip' }
            }
        }
    }
}
