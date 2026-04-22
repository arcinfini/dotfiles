local HEADER_LINES = {
    "███┐   ██┐███████┐ ██████┐ ██┐   ██┐██┐███┐   ███┐",
    "████┐  ██│██┌────┘██┌───██┐██│   ██│██│████┐ ████│",
    "██┌██┐ ██│█████┐  ██│   ██│██│   ██│██│██┌████┌██│",
    "██│└██┐██│██┌──┘  ██│   ██│└██┐ ██┌┘██│██│└██┌┘██│",
    "██│ └████│███████┐└██████┌┘ └████┌┘ ██│██│ └─┘ ██│",
    "└─┘  └───┘└──────┘ └─────┘   └───┘  └─┘└─┘     └─┘",
}

-- 1. Recent files
-- 2. Open Tree
-- 3. Edit new file
-- 4. Quit Nvim

local function build_footer()
    local ms = math.floor((vim.uv.hrtime() - vim.g._start_time) / 1e6)
    return string.format("  Neovim started in %dms", ms)
end

return {
    "nvim-mini/mini.starter",
    version = false,
    opts = function()
        local miniStarter = require("mini.starter")

        local function open_tree()
            local open = require("nvim-tree.api").tree.open
            miniStarter.close()
            if open then
                open()
            end
        end

        return {
            header = table.concat(HEADER_LINES, "\n"),
            footer = build_footer(),

            items = {
                { name = "Open Tree", action = open_tree, section = "", keys = "t" },
                { name = "New File", action = "ene | startinsert", section = "", keys = "n" },
                { name = "Quit", action = "qa", section = "", keys = "q" },
                miniStarter.sections.recent_files(),
            },
            content_hooks = {
                miniStarter.gen_hook.adding_bullet(""),
                miniStarter.gen_hook.aligning("center", "center"),
            },
        }
    end,
    init = function()
        vim.keymap.set("n", "<leader>s", "<cmd>lua MiniStarter.open()<cr>", { desc = "Open Starter" })

        vim.api.nvim_create_autocmd("VimEnter", {
            callback = function()
                local args = vim.fn.argv()
                if #args > 0 then
                    pcall(vim.cmd, 'silent! lua require("mini.starter").close()')
                end
            end,
        })
    end,
}
