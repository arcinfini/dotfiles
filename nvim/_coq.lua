-- Disabled because of key mappings overlap
return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            { 'ms-jpq/coq_nvim', branch = 'coq' },
            { 'ms-jpq/coq.artifact', branch = 'artifacts' }
        },
        init = function()
            vim.g.coq_settings = {
                auto_start = true, -- if you want to start COQ at startup
                -- Your COQ settings here
                keymap = {
                    bigger_preview = "",
                    jump_to_mark =  ""
                }
            }
        end
    }
}
