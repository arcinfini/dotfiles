--[[
--
-- https://github.com/stevearc/conform.nvim
-- 
-- Uses defined formatters by filetype to format the saved file
--
--]]

return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "ruff" },
            rust = { "rustfmt" },
        },
        format_on_save = {
            -- These options will be passed to conform.format()
            timeout_ms = 500,
            lsp_format = "fallback",
        },
    },
}
