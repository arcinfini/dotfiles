
return {
    { 
        "nvim-tree/nvim-tree.lua", 
        init = function()
           local api = require 'nvim-tree.api'

            local function opts(desc)
                return { 
                    desc = 'nvim-tree: '.. desc, 
                    buffer = bufnr, 
                    noremap = true, 
                    silent = true, 
                    nowait = true 
                }
            end

            vim.keymap.set('n', '<leader>tt', api.tree.open, opts('[T]oggle Open / Focus Tree'))
            vim.keymap.set('n', '<leader>tq', api.tree.close, opts('[Q]uit the Tree'))
            vim.keymap.set('n', '<leader>tr', api.tree.reload, opts('[R]eload the Tree'))
            vim.keymap.set('n', '<leader>tc', function() api.tree.collapse_all(true) end, opts('[C]ollapse the Tree'))


        end,
        opts={ 
            filters = {dotfiles = true},
            hijack_cursor = true
        } 
    }
}
