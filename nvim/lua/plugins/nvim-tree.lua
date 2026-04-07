--[[
--
-- https://github.com/nvim-tree/nvim-tree.lua
--
-- The little file structure that appears on the left.
--
--]]

return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts={},
    init = function()
        local api = require('nvim-tree.api')
        local map = vim.keymap.set

        local function opts(desc) end

        map('n', '<leader>tt', api.tree.open, opts('[T]oggle Open / Focus Tree'))
        map('n', '<leader>tq', api.tree.close, opts('[Q]uit the Tree'))
        map('n', '<leader>tr', api.tree.reload, opts('[R]eload the Tree'))
    end
}
