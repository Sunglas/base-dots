"                
"  _  _ _|_     ._
" _> (/_ |_ |_| |_)
"               |
filetype plugin indent on
syntax on
filetype on

set ignorecase
set smartcase
set ruler
set ttyfast
set confirm
set relativenumber
set number
set numberwidth=6
set signcolumn=yes
set shiftwidth=4
set softtabstop=4
set expandtab
set langmap=tj,nk,sl,jt,kn,ls
set clipboard=unnamedplus
set viewoptions=cursor,folds,slash,unix
"colorscheme nord
"colorscheme wargrey
colorscheme bubblegum
autocmd BufWritePost *.tex silent! execute "!latexmk -f -pdf %" | redraw!
"autocmd UIEnter * :Goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

"                 
" ._ _   _.  _ ._ _   _
" | | | (_| (_ | (_) _>
"                 
nnoremap <S-Enter> O<Esc>t
nnoremap <CR> o<Esc>n
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
nnoremap <leader>f :NERDTreeToggle<CR>
vnoremap <Space> zf

"                                             
" ._  |      _  o ._      _  _ _|_ _|_ o ._   _   _
" |_) | |_| (_| | | |    _> (/_ |_  |_ | | | (_| _>
" |          _|                               _|
" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" vimtex
let g:vimtex_view_method = 'zathura'

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_cpp_checkers = ['cppcheck']
let g:syntastic_cpp_cppcheck_args = "--std=c++20"

" vimwiki
let g:vimwiki_list = [{'path': '~/Documents/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
set nocompatible
let g:vimwiki_folding = 'custom'

" airline
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1

" neovide
if exists("g:neovide")
    " Put anything that only happens in neovide here
endif

" vim startify
let g:startify_custom_header = 'startify#pad(split(system("lolcat -b /home/void/Documents/ascii/neovide.asc"), "\n"))'


"                  
" ._  |      _  o ._   _
" |_) | |_| (_| | | | _>
" |          _|    
call plug#begin('$HOME/.config/nvim/plugins')
    Plug 'llathasa-veleth/vim-brainfuck'
    Plug 'lilydjwg/colorizer'
    Plug 'lervag/vimtex'
    Plug 'PyGamer0/vim-apl'
    Plug 'rust-lang-nursery/rustfmt'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'yggdroot/indentline'
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/syntastic'
    Plug 'scrooloose/nerdtree'
    Plug 'vim-scripts/restore_view.vim'
    Plug 'cespare/vim-toml', { 'branch': 'main' }
    Plug 'fladson/vim-kitty'
    Plug 'potatoesmaster/i3-vim-syntax'
    Plug 'vimwiki/vimwiki'
    Plug 'mhinz/vim-startify'
    Plug 'vifm/vifm'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()
