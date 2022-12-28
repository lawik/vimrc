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

" Disable things
:nmap <F1> <nop>
:map q <nop>


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
    Plug 'dracula/vim',{'as':'dracula'}
    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/vim-easy-align'
    Plug 'tpope/vim-surround'
    Plug 'w0rp/ale'
    Plug 'scrooloose/nerdtree'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'  " General fuzzy finder
    Plug 'elmcast/elm-vim'
    " Elixir
    Plug 'elixir-editors/vim-elixir'
    Plug 'mhanberg/elixir-ls'
    " LSP things
    Plug 'neovim/nvim-lspconfig'
    " Autocomplete
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    " Snippets?
    " Plug 'hrsh7th/cmp-vsnip'
    " Plug 'hrsh7th/vim-vsnip'

    Plug 'onsails/lspkind-nvim'


call plug#end()

colorscheme dracula

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_fix_on_save = 1

let g:elm_setup_keybindings = 0

let g:NERDTreeChDirMode = 2  " Change cwd to parent node

" let g:NERDTreeMinimalUI = 1  " Hide help text
" let g:NERDTreeAutoDeleteBuffer = 1

nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>N :NERDTreeFind<CR>

" Prefix all commands with Fz,
" so Files is Fzfiles, Rg is FzRg, etc.
" It's useful to autocomplete all fzf commands using :Fz<tab>
let g:fzf_command_prefix = 'Fz'

" Keeps the history of previous searches.
" You can use ctrl-n or ctr-p to navigate the history on a FZF window
let g:fzf_history_dir = '~/.local/share/fzf-history'

nnoremap <leader>p :FzFiles<CR>
nnoremap <leader>r :FzRg<CR>
nnoremap <leader>f :FzBLines<CR>

map § <leader>

" Ignore .gitignore
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Set up Elixir crap
lua require('elixir')
