-- General Configuration
print("Welcome king king")
vim.opt.clipboard = 'unnamedplus'
vim.opt.relativenumber = true
vim.opt.number = true


vim.cmd('call plug#begin()')

vim.cmd("Plug 'startup-nvim/startup.nvim'")
vim.cmd("Plug 'folke/tokyonight.nvim'")
vim.cmd("Plug 'junegunn/vim-plug'")
vim.cmd("Plug 'ThePrimeagen/vim-be-good', { 'on': ['VimEnter', 'VimLeave'] }")
vim.cmd("Plug 'github/copilot.vim', {'branch': 'main'}")
vim.cmd("Plug 'preservim/nerdtree'")
vim.cmd("Plug 'nvim-lualine/lualine.nvim'")
--vim.cmd("Plug 'neoclide/coc.nvim', {'branch': 'release'}")
vim.cmd("Plug 'ryanoasis/vim-devicons'")
vim.cmd("Plug 'nvim-lua/plenary.nvim'")
vim.cmd("Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }")
vim.cmd("Plug 'Pocco81/AutoSave.nvim'")
vim.cmd("Plug 'prettier/vim-prettier'")
vim.cmd("Plug 'morhetz/gruvbox'")
vim.cmd("Plug 'williamboman/mason.nvim'")
vim.cmd("Plug 'williamboman/mason-lspconfig.nvim'")
vim.cmd("Plug 'neovim/nvim-lspconfig'")
vim.cmd('call plug#end()')

package.path = package.path .. ';' .. vim.fn.expand('~/.config/nvim/?.lua')

local q= require('plugins.generalconfiguration')
local b= require('plugins.alpha-nvim')
local c= require('plugins.plugins')
local d= require('plugins.telescopeconfig')
local e= require('plugins.lsp-config')
-- Coc Settings
vim.api.nvim_set_keymap('i', '<TAB>', 'pumvisible() and "<C-n>" or check_back_space() and "<TAB>" or coc.refresh()', {expr = true})
vim.api.nvim_set_keymap('i', '<S-TAB>', 'pumvisible() and "<C-p>" or "<C-h>"', {expr = true})


-- vim.api.nvim_set_keymap('i', '<CR>', 'coc.pumvisible() ? coc._select_confirm() : "<C-g>u<CR><C-r>=coc.on_enter()<CR>"', {expr = true})

-- vim.cmd([[autocmd! User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')]])
-- vim.cmd([[autocmd! User CocJumpPlaceholder call CocActionAsync('highlight')]])

-- -- UltiSnips Settings
-- vim.g.UltiSnipsExpandTrigger = "<tab>"
-- vim.g.UltiSnipsJumpForwardTrigger = "<c-b>"
-- vim.g.UltiSnipsJumpBackwardTrigger = "<c-z>"
-- vim.g.UltiSnipsEditSplit = "vertical"

-- NERDTree Toggle
vim.api.nvim_set_keymap('n', '<C-b>', ':NERDTreeToggle<CR>', {noremap = true})

-- Telescope Configuration
-- Prettier Configuration
vim.g.prettier_quickfix_enabled = 0
vim.g.prettier_autoformat_require_pragma = 0
vim.g.prettier_autoformat_config_file_enabled = 1
vim.g.prettier_autoformat_config_file = '.prettierrc'
vim.cmd([[autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.html,*.css,*.json Prettier]])

-- Color Scheme
vim.cmd('syntax enable')
vim.cmd('set background=dark')
vim.cmd('colorscheme gruvbox')

-- return {
--     ['goolord/alpha-nvim'] = {
--         config = function ()
--             require'alpha'.setup(require'alpha.themes.dashboard'.config)
--         end
--     }
-- }

-- Configure the alpha-nvim plugin
-- vim.cmd([[
--   autocmd VimEnter * lua require'alpha'.setup(require'alpha.themes.dashboard'.config)
-- ]])
