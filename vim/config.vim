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
let g:NERDTreeChDirMode = 2  " Change cwd to parent node

" let g:NERDTreeMinimalUI = 1  " Hide help text
" let g:NERDTreeAutoDeleteBuffer = 1

"nnoremap <leader>n :NERDTreeToggle<CR>
"nnoremap <leader>N :NERDTreeFind<CR>

" Prefix all commands with Fz,
" so Files is Fzfiles, Rg is FzRg, etc.
" It's useful to autocomplete all fzf commands using :Fz<tab>
" let g:fzf_command_prefix = 'Fz'

" Keeps the history of previous searches.
" You can use ctrl-n or ctr-p to navigate the history on a FZF window
"let g:fzf_history_dir = '~/.local/share/fzf-history'

"nnoremap <leader>p :FzFiles<CR>
"nnoremap <leader>r :FzRg<CR>
"nnoremap <leader>f :FzBLines<CR>

"map \ <leader>
"nmap \ §

" Ignore .gitignore
"let $FZF_DEFAULT_COMMAND = 'ag -g ""'
