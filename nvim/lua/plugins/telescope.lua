return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    init = function()
        -- setup telescope mappings
        local mappings = require("core.mappings")
        local set = mappings.set
        local opts = mappings.opts

        local builtin = require("telescope.builtin")

        set("n", "<leader>ff", builtin.find_files, {})
        set("n", "<leader>fg", builtin.live_grep, {})
    end,
}
