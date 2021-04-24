"---------------------
"NO_ARROWS -----------
"---------------------
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"---------------------
"NAVIGATION ----------
"---------------------
noremap <S-h> 0
noremap <S-l> $
noremap <S-k> <C-u>
noremap <S-j> <C-d>

"---------------------
" COPY PASTE ---------
"---------------------
vnoremap y "+y
inoremap <C-v>  <C-O>"+p
inoremap <C-c> <Esc>:w<Cr>l

"---------------------
" TABS ---------------
"---------------------
set hidden
let g:buffergator_suppress_keymaps = 1
nnoremap <C-n> :enew<cr>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <leader>q :bd<CR>
