source ~/.vim/modules/settings.vim " (Vundle, Vim-Plug)
source ~/.vim/modules/keyboar.vim
source ~/.vim/modules/settings.vim

"-----------------------------------------
" CODING ---------------------------------
"-----------------------------------------
if &filetype ==# 'tex'
  source ~/.vim/modules/coding/latex.vim
endif

if &filetype ==# 'go'
  source ~/.vim/modules/coding/go.vim
endif

if &filetype ==# 'js' || &filetype ==# 'vue' 
  source ~/.vim/modules/coding/js.vim
endif
