set hidden
set hlsearch
set mouse=a
set wildignorecase
set wildmenu
set wildmode=longest,list,full

filetype plugin indent on

:nmap <F1> <nop>

function! <SID>StripTrailingWhitespaces()
	  let l = line(".")
	  let c = col(".")
	  %s/\s\+$//e
	  call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Install plugs
call plug#begin('~/.config/nvim/myplugindir')
	Plug 'airblade/vim-gitgutter'
call plug#end()
