

return {
    'neovim/nvim-lspconfig',
    -- lazy = false,
    dependencies = {
        'saghen/blink.cmp',
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
    },

    opts = {
        servers = {lua_ls={}, rust_analyzer={}, pylsp={}, ruff={ init_options = { settings = { configuratioPreference = 'filesystemFirst' } } }}
    },

    config = function (_, opts)
        require('mason').setup()
        require('mason-lspconfig').setup {
            ensure_installed = { 'lua_ls', 'rust_analyzer', 'pylsp', 'ruff' }
        }

        -- print (require('blink.cmp.fuzzy.download').lib_path)

        local lspconfig = require('lspconfig')
        for server, config in pairs(opts.servers or {}) do
            config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
            lspconfig[server].setup(config)
        end
    end
}
