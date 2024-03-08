" General Configuration
echo "Welcome king"
set clipboard+=unnamedplus
set relativenumber
set number

" Plugin Manager Setup
call plug#begin()
Plug 'startup-nvim/startup.nvim'
Plug 'folke/tokyonight.nvim'
Plug 'junegunn/vim-plug'
Plug 'ThePrimeagen/vim-be-good', { 'on': ['VimEnter', 'VimLeave'] }
Plug 'github/copilot.vim', {'branch': 'main'}
Plug 'preservim/nerdtree'
Plug 'nvim-lualine/lualine.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'Pocco81/AutoSave.nvim'
Plug 'prettier/vim-prettier'
Plug 'morhetz/gruvbox'
"Plug 'goolord/alpha-nvim'
"Plug 'mhinz/vim-startify'
call plug#end()

" Coc Settings
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

autocmd! User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
autocmd! User CocJumpPlaceholder call CocActionAsync('highlight')

" UltiSnips Settings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" Coc Snippets Settings
" Uncomment the following lines if using coc-snippets
" inoremap <silent><expr> <TAB>
"       \ coc#pum#visible() ? coc#_select_confirm() :
"       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"       \ CheckBackspace() ? "\<TAB>" :
"       \ coc#refresh()

" Vim-Devicons Configuration
set guifont=BitstreamVeraSansMono_NF:h13

" NERDTree Toggle
nnoremap <C-b> :NERDTreeToggle<CR>

" Telescope Configuration
luafile ~/.config/nvim/plugins/telescopeconfig.lua

" Prettier Configuration
let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat_config_file_enabled = 1
let g:prettier#autoformat_config_file = '.prettierrc'
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.html,*.css,*.json :Prettier

" Color Scheme
syntax enable
set background=dark
colorscheme gruvbox
source ~/.config/nvim/plugins/generalconfiguration.vim
" detcect env files 
autocmd BufNewFile,BufRead *.env set filetype=dotenv

" configuration for alpha
" Configure Alpha-Nvim with the dashboard theme
" let g:alpha_nvim_started = 1
" let g:alpha_setup_custom_opts = 1
" let g:alpha_custom_option.opts.dashboard.section.header = ['   ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
"     \ '   ████╗  ██║ ██╔════╝ ██╔══██╗ ██║   ██║ ██║ ████╗ ████║',
"     \ '   ██╔██╗ ██║ █████╗   ██████╔╝ ██║   ██║ ██║ ██╔████╔██║',
"    \ '   ██║╚██╗██║ ██╔══╝   ██╔══██╗ ██║   ██║ ██║ ██║╚██╔╝██║',
"    \ '   ██║ ╚████║ ███████╗ ██║  ██║ ╚██████╔╝ ██║ ██║ ╚═╝ ██║']
" luafile ~/.config/nvim/plugins/alpha-nvim.lua
