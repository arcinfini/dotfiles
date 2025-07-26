
local map = vim.keymap.set

-- Disable arrow key navigation
map('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
map('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
map('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
map('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Window Navigation
map('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
map('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
map('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
map('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Tab Navigation
map('n', '<C-Right>', ':tabnext<CR>', { noremap = true, silent = true })
map('n', '<C-Left>', ':tabprevious<CR>', { noremap = true, silent = true })


-- Comments
map("n", "<leader>/", "gcc", { desc = 'Toggle Comment', remap = true })
map("v", "<leader>/", "gc", { desc = 'Toggle Comment', remap = true })



local mappings = {}

mappings.telescope = function ()
    local builtin = require('telescope.builtin')

    map('n', '<leader>ff', builtin.find_files, {})
    map('n', '<leader>fg', builtin.live_grep, {})
end

mappings.nvimtree = function ()
    local api = require 'nvim-tree.api'

    local function opts(desc)
        return {
            desc = 'nvim-tree: '.. desc,
            noremap = true,
            silent = true,
            nowait = true
        }
    end

    map('n', '<leader>tt', api.tree.open, opts('[T]oggle Open / Focus Tree'))
    map('n', '<leader>tq', api.tree.close, opts('[Q]uit the Tree'))
    map('n', '<leader>tr', api.tree.reload, opts('[R]eload the Tree'))
    map('n', '<leader>tc', function() api.tree.collapse_all(true) end, opts('[C]ollapse the Tree'))
end

return mappings
