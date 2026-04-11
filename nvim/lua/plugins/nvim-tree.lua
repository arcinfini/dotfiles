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
    opts = {},
    init = function()
        local api = require("nvim-tree.api")
        local mappings = require("core.mappings")
        local set = mappings.set
        local opts = mappings.opts

        set("n", "<leader>tf", api.tree.open, opts("Focus Tree"))
        set("n", "<leader>tt", api.tree.toggle, opts("Quit the Tree"))
        set("n", "<leader>tr", api.tree.reload, opts("Reload the Tree"))
    end,
}
