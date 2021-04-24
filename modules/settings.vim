"--------------------
" Global ------------
" -------------------

let mapleader = "<"
set backupdir=~/.vim/tmp-files
set pastetoggle=<F2>
set number
set hlsearch
set nocompatible
set showmode
set expandtab
set backspace=indent,eol,start
set rtp+=~/.fzf
set mouse=a
set timeoutlen=1000 ttimeoutlen=0
set smartindent
set autoindent
syntax enable

autocmd vimenter * colorscheme gruvbox
set background=light

let delimitMate_expand_cr=1
autocmd CursorMoved * exe printf('match MoreMsg /\V\<%s\>/',
escape(expand('<cword>'), '/\'))


"---------------------
" FZF ----------------
"---------------------
let g:fzf_layout = { 'down': '~100%' }
nnoremap <C-b> :Buffers<CR>
nnoremap <C-f> :Files<CR>
nnoremap <S-f> :Files ~/<CR>
nnoremap <C-l> :Lines<CR>

"---------------------
" TMUX ---------------
"---------------------
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

"---------------------
" AUTOSAVE -----------
"---------------------
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0
let g:auto_save_silent = 0

"---------------------
" AIRLINE ------------
"---------------------
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
