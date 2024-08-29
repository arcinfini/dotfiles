-- Create keybind for gitblame
-- Create keybind to toggle signs
-- Create keybinds for navigating hunks (I think this is what they are called)

return {
    { 'lewis6991/gitsigns.nvim', opts = {
        on_attach = function(bufnr)
            local gs = require('gitsigns')

            local function map(mode, l, r, opts)
                opts = opts or {}
                opts.buffer = bufnr
                vim.keymap.set(mode, l, r, opts)
            end

            map('n', '<leader>gb', gs.toggle_current_line_blame)

        end

    }}
}
