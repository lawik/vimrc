set hidden
set hlsearch
set mouse=a
set wildignorecase
set wildmenu
set wildmode=longest,list,full
set signcolumn=yes


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
	Plug 'dracula/vim'
	Plug 'tpope/vim-fugitive'
call plug#end()

colors dracula
