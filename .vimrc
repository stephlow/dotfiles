if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'ayu-theme/ayu-vim' " Theme
Plug 'Yggdroot/indentLine' " Visual line indention
Plug 'vim-airline/vim-airline' " Status/tab line
Plug 'airblade/vim-gitgutter' " Git line info

Plug 'sheerun/vim-polyglot' " Language pack
Plug 'w0rp/ale' " Async linting / fixing / LSP

Plug 'rust-lang/rust.vim'
Plug 'elixir-editors/vim-elixir'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

Plug 'supercollider/scvim'
Plug 'gmoe/vim-faust'

call plug#end()

syntax on

" let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme

colorscheme ayu

language en_GB

set encoding=utf-8

set tabstop=2
set shiftwidth=2
set scrolloff=2
set autoindent
set smartindent
set expandtab

set ignorecase
set smartcase

set number
set relativenumber

set termguicolors
set colorcolumn=100

set clipboard=unnamed
set spell spelllang=en_gb

let g:ale_open_list = 1
let g:ale_linters_explicit = 1
let b:ale_linters = ['eslint']
let g:ale_fixers = {
  \ 'javascript': ['eslint'],
  \ }

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> :tabp<CR>
noremap <Right> :tabn<CR>
