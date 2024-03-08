-- Map Ctrl + j to :bnext
vim.api.nvim_set_keymap('n', '<C-n>', ':bnext<CR>', {noremap = true})

-- Map Ctrl + k to :bprev
vim.api.nvim_set_keymap('n', '<C-p>', ':bprev<CR>', {noremap = true})

-- Navigate to the next tab with <Tab>
vim.api.nvim_set_keymap('n', '<Tab>', ':tabnext<CR>', {noremap = true})

-- Navigate to the previous tab with <S-Tab>
vim.api.nvim_set_keymap('n', '<S-Tab>', ':tabprev<CR>', {noremap = true})

-- Map <Leader>n to create a new tab
vim.api.nvim_set_keymap('n', '<Leader>n', ':tabnew<CR>', {noremap = true})

-- Map <Leader>q to quit
vim.api.nvim_set_keymap('n', '<Leader>q', ':q<CR>', {noremap = true})