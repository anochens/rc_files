syntax on
set nocompatible
set cinwords=if,def,for,while,class,do,else,switch,case
set smartindent
set tabstop=3
set shiftwidth=3
set shiftwidth=3
set number
set noexpandtab

set history=1000
set undolevels=1000
set title
set noerrorbells
set nobackup
set noswapfile
set ignorecase
set smartcase
set showmatch
set incsearch
set showmatch
set hlsearch
filetype on

nnoremap / /\v
vnoremap / /\v
nnoremap ; :
nmap <silent> ,/ :let @/=""<CR>
inoremap jj <ESC>

nnoremap tn gt
nnoremap tc :q<CR>
nnoremap to :tabf ./

hi Comment ctermfg=lightgreen

set virtualedit=all
autocmd FileType ruby set omnifunc=rubycomplete
autocmd FileType perl set omnifunc=perlcomplete
autocmd FileType c set omnifunc=ccomplete

vnoremap <tab> >
vnoremap <s-Tab> <
map q :q

function! Tab_Or_Complete()
   if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
      return "\<c-n>"
   else
      return "\<tab>"
   ndif
endfunction

inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

highlight Pmenu ctermbg=LightGray ctermfg=Black gui=bold
highlight PmenuSel ctermfg=DarkBlue ctermbg=DarkRed
