""------------------------------------------------------------
"-------------------------- Vim-Plug -------------------------
""------------------------------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'Shougo/vimproc.vim'
Plug 'w0rp/ale'

"Editor
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug '907th/vim-auto-save'
Plug 'djoshea/vim-autoread'
Plug 'vim-scripts/AutoComplPop'

"Functional
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'

"Programming
Plug 'lervag/vimtex'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'brookhong/cscope.vim'
Plug 'hari-rangarajan/CCTree' 
"ccglue?
call plug#end()


""------------------------------------------------------------
"------------------------ Vundle -----------------------------
""------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
