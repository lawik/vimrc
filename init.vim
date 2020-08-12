set hidden
set hlsearch
set mouse=a
set wildignorecase
set wildmenu
set wildmode=longest,list,full
set signcolumn=yes
set tabstop=4
set expandtab
set shiftwidth=4

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
	Plug 'junegunn/vim-easy-align'
	Plug 'tpope/vim-surround'
	Plug 'w0rp/ale'
call plug#end()

colors dracula

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_fix_on_save = 1

