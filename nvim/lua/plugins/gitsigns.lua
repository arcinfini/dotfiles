--[[
--
-- https://github.com/lewis6991/gitsigns.nvim
--
-- Neovim git navigation. 
--
-- While I mainly use this for showing changes, it has powerful tools for
-- navigation and the like in terms of git.
--
--]]

return {
    'lewis6991/gitsigns.nvim',
    init = function()
        local api = require('gitsigns')
        local map = vim.keymap.set
        
        map('n', '<leader>gb', api.blame, {})
        map('n', '<leader>gp', api.preview_hunk, {})
    end,
}
