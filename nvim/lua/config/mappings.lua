
local map = vim.keymap.set

-- Disable arrow key navigation
map('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
map('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
map('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
map('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Window Navigation
map('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
map('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
map('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
map('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Tab Navigation
map('n', '<C-Right>', ':tabnext<CR>', { noremap = true, silent = true })
map('n', '<C-Left>', ':tabprevious<CR>', { noremap = true, silent = true })


-- Comments
map("n", "<leader>/", "gcc", { desc = 'Toggle Comment', remap = true })
map("v", "<leader>/", "gc", { desc = 'Toggle Comment', remap = true })


return true
