
return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {},
        init = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = { 'lua', 'python', 'rust', 'markdown', 'markdown_inline' },
                highlight = { enable = true },
                indentation = { enable = true },
                sync_install = false,
                auto_install = false,
                ignore_install = {}
            })
        end
    }
}
