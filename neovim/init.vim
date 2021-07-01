call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'vim-syntastic/syntastic'
Plug 'dikiaap/minimalist'
Plug 'gauteh/vim-cppman'
Plug 'neomake/neomake'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:Powerline_symbols = 'fancy'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme='onedark'


" Show line numbers
set number
syntax on
set backspace=indent,eol,start

syntax enable
set showmatch
set hlsearch
set cursorline

autocmd BufWritePre <buffer> :%s/\s\+$//e
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

nnoremap <space>e :CocCommand explorer<CR>
nnoremap <C-c> :!g++ -o  %:r.out % -std=c++20 <Enter>
nnoremap <C-x> :!./%:r.out

nnoremap <silent> <C-f> :Rg<CR>
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
 let g:airline_left_sep = '»'
 let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

set t_Co=256
syntax on
colorscheme minimalist
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


