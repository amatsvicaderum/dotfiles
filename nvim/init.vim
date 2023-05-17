set encoding=UTF-8
set nobackup
set nowritebackup
set nowrap
set number
set relativenumber
set autoindent
set shiftwidth=2
set smarttab
set tabstop=2
set expandtab
set mouse=a
set timeoutlen=1000
set hlsearch
set nomodeline
let mapleader = " "
colorscheme arch
let g:airline_theme='iceberg'

source ~/.config/nvim/function.vim

call plug#begin()

Plug 'tpope/vim-surround'                " Surrounding ysw
Plug 'tpope/vim-repeat'                  " Repeat plugin commands
Plug 'tpope/vim-commentary'              " For Commenting gcc & gc
Plug 'tpope/vim-fugitive'                " Git wrapper
Plug 'preservim/nerdtree'                " NerdTree
Plug 'tpope/vim-endwise'                 " autoclose
Plug 'vim-airline/vim-airline'           " Status bar
Plug 'vim-airline/vim-airline-themes'    " themes i think i don't know
Plug 'lifepillar/pgsql.vim'              " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'ap/vim-css-color'                  " CSS Color Preview
Plug 'rafi/awesome-vim-colorschemes'     " Retro Scheme
Plug 'neoclide/coc.nvim'                 " Auto Completion
Plug 'ryanoasis/vim-devicons'            " Developer Icons
Plug 'tc50cal/vim-terminal'              " Vim Terminal
Plug 'preservim/tagbar'                  " Tagbar for code navigation
Plug 'terryma/vim-multiple-cursors'      " CTRL + N for multiple cursors
Plug 'mattn/emmet-vim.git'               " emmet i dunno
Plug 'mattn/emmet-vim'                   " emmet duh
Plug 'lervag/vimtex'                     " required for autocompletion
Plug 'nvim-treesitter/nvim-treesitter'   " syntax highlight
Plug 'vim-autoformat/vim-autoformat'     " autoformat
Plug 'glts/vim-radical'                  " gA & crd, crx, cro, crb to decimal, hex, octal, binary
Plug 'ervandew/supertab'                 " tab completion
Plug 'glts/vim-magnum'                   " library for plugins

call plug#end()

" nvimtree
nnoremap <c-f> :NERDTreeFocus<CR>
nnoremap <c-t> :NERDTreeToggle<CR>
nnoremap <c-l> :call CocActionAsync('jumpDefinition')<CR>

" remap
map <s-y> "+y
map <s-q> @@
noremap d "_d
map <s-right> e
map <c-right> $
map <c-left> 0
map <m-down> <c-e>
map <m-up> <c-y>
map <c-m-down> 5<c-e>
map <c-m-up> 5<c-y>

" function
nnoremap <s-w> :call PromptSave()<cr>
map <c-.> :call ToggleLineNumber() <CR>
map <m-.> :call ToggleCursorLine() <CR>
map <m-w> :call ToggleWrap() <CR>
nmap <F8> :TagbarToggle<CR>
nmap <c-p> :Autoformat<CR>

" wrap navigation
imap <silent> <Down> <c-o>gj
imap <silent> <Up> <c-o>gk

let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 0
let g:prettier#config#html_whitespace_sensitivity = 'css'
let g:prettier#config#semi = 0

" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" emmet
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','
let b:coc_diagnostic_disable=1

" fold; improve
au BufWritePost *.tex :silent ! pdflatex %
au BufWritePost ~/.vaal/antr/* :mkview
au BufWinEnter  ~/.vaal/antr/* :loadview
au BufWritePost * :%s/\s\+$//e
