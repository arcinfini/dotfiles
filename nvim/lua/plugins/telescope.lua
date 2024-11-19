

return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    init = function()
        -- setup telescope mappings
        require('config.mappings').telescope()
    end
}
