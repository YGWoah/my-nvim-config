-- Key mappings for Telescope
local map = vim.api.nvim_set_keymap  -- Define a local variable 'map' for convenience
local opts = { noremap = true, silent = true }  -- Define options for the key mappings

-- Mapping for finding files with Telescope
map('n', '<leader>f', [[<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>]], opts)

-- Mapping for live grep with Telescope using the ivy theme
map('n', '<leader>F', '<cmd>Telescope live_grep theme=ivy<cr>', opts)

-- Define a key mapping to open the buffers picker in Telescope
vim.api.nvim_set_keymap('n', '<leader>bb', ':Telescope buffers<CR>', { noremap = true, silent = true })

-- Mapping for projects with Telescope
map('n', '<leader>P', '<cmd>lua require("telescope").extensions.projects.projects()<cr>', opts)


