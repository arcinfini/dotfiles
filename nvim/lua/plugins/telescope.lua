

return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    init = function()
        -- setup telescope mappings
        require('config.mappings').telescope()
    end
}
