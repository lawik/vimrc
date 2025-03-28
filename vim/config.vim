:nmap <F1> <nop>
highlight nonascii guibg=Red ctermbg=1 term=standout
au BufReadPost * syntax match nonascii "[^\u0000-\u007F]"

function! <SID>StripTrailingWhitespaces()
	  let l = line(".")
	  let c = col(".")
	  %s/\s\+$//e
	  call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
