"---Cscope
function! LoadCscope()
  let db = findfile("cscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/cscope.out$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
	""!cscope -Rb
  endif
endfunction

function! LoadDB()
    if filereadable('cscope.out')
		redir => message
        CCTreeLoadDB cscope.out
		redir end
		new
		setlocal buftype=nofile bufhidden=wipe noswapfile nobuflisted nomodified
	    silent put=message
    endif
endfunction

augroup qf
    autocmd!
    autocmd QuickFixCmdPost * cwindow
augroup END

function! RegenTags(...)
	:silent !rm tags	2> /dev/null
	:silent !rm cscope.out  2> /dev/null

	:Tags
	:!cscope -Rb
	:cs reset
endfunction

"---Mappings
nnoremap <leader>a "zyiw:exe " cscope find a ".@z.""<CR>
nnoremap <leader>fa "zyiw:exe " cscope find a ".@z.""
nnoremap <leader>c "zyiw:exe " cscope find c ".@z.""<CR>
nnoremap <leader>fc "zyiw:exe " cscope find c ".@z.""
nnoremap <leader>d "zyiw:exe " cscope find d ".@z.""<CR>
nnoremap <leader>fd "zyiw:exe " cscope find d ".@z.""
nnoremap <leader>g "zyiw:exe " cscope find g ".@z.""<CR>
nnoremap <leader>s "zyiw:exe " cscope find s ".@z.""<CR>

au BufEnter /* call LoadCscope()
nnoremap <leader>ll :call LoadDB()<CR>
nnoremap <F5> :call RegenTags()<CR>

"---Tags
nnoremap <leader><tab> <plug>(fzf-maps-n)
nnoremap <leader>, "zyiw:exe " Tags ".@z.""<CR>
nnoremap <leader>. :Tags<CR>
