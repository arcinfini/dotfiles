--[[
--
-- Automatically integrates with the lsp servers to provide completions
--
--]]

-- https://cmp.saghen.dev/configuration/reference.html
return {
    "saghen/blink.cmp",
    version = "1.*",
    opts = {
        sources = {
            default = { "lazydev", "lsp", "path", "snippets", "buffer" },
            providers = {
                lazydev = {
                    name = "LazyDev",
                    module = "lazydev.integrations.blink",
                    -- make lazydev completions top priority (see `:h blink.cmp`)
                    score_offset = 100,
                },
            },
        },
        completion = {
            documentation = {
                auto_show = true,
            },
            ghost_text = { enabled = true },
        },
    },
}
