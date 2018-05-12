"To enable 256 colors in vim 
set t_Co=256

"Set colorscheme
" mustang"
" colorscheme mustang
" molokai"
 colorscheme molokai 

"Set Header 
let mapleader="," 
" jk is escape 
inoremap jk <esc>
" map . to work the same in visual mode
vnoremap .  :norm.<CR>
" Strip all trailing whitespaces in the file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>


"Add this line for Pathogen
call pathogen#infect()

syntax on
filetype plugin indent on

set nocompatible

"Modifying tabs
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab 


"From coming-home-to-vim#important-vimrc-lines
" Making vim sane
set encoding=utf-8
set ttyfast
set ruler
set backspace=indent,eol,start
set showmode
set showcmd
set showmatch "match brackets
set matchtime=3
set hidden
set wildmenu
set wildmode=list:longest
set cursorline
set relativenumber
set number
" Open new panes right and below
set splitright 
set splitbelow
" Searching/moving
set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
" Let vim handle long lines correctly
set wrap
set textwidth=100
set formatoptions=cqt
set colorcolumn=90

"Set status line 
set laststatus=2
set statusline=%t           "tail of the filename
set statusline+=\ %P        "percent through file 
set statusline+=%=          "left/right separator
set statusline+=%c,%l/%L    "cursor col,cursor line/total lines
set statusline+=%y          "file type
set statusline+=%f          "add full file path
"Jedi 
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:pymode_rope = 0
"let g:jedi#completions_enabled = 0

autocmd FileType python setlocal completeopt-=preview
