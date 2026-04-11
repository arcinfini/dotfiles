return {
    "https://github.com/nvim-mini/mini.nvim",
    config = function()
        local config = require("util.starter")
        require("mini.starter").setup(config)

        vim.keymap.set("n", "<leader>s", "<cmd>lua MiniStarter.open()<cr>", { desc = "Open Starter" })

        vim.schedule(function()
            pcall(require("mini.starter").open)
        end)
    end,
}
