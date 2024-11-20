
return {
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        init = function()
            -- setup mappings
            require('config.mappings').nvimtree()
        end,

        opts={
            hijack_cursor = true,
            renderer = {
                icons = {
                    show = {
                        file = true,
                        folder = true,
                        folder_arrow = true,
                        git = true
                    }
                }
            },
            filters = { git_ignored = false, custom = {'__pycache__', '.ruff_cache', '.mypy_cache', '.venv/', '.git'} }
        }
    }
}
