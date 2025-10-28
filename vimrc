syntax on
let mapleader = ' '
set ttimeout
set ttimeoutlen=100
set list
set listchars=nbsp:•,trail:•,precedes:«,extends:»,tab:→\
set showbreak=↪\
set linebreak
set breakindent
set backspace=
set backspace=indent,eol,start
set number
set ignorecase
set smartcase
set autoindent
set incsearch
set hlsearch
set title
set scrolloff=2
set expandtab
set softtabstop=2
set shiftwidth=4
set tabstop=4
set display+=lastline
set wildmenu
set wildmode=list,full
set cursorline
set laststatus=2
set statusline+=\ %F
set statusline+=\ %m
set statusline+=%=
set statusline+=\ %l,%v
set statusline+=\ %y
highlight LineNr ctermfg=white
highlight StatusLine cterm=reverse
highlight StatusLineNC cterm=underline
highlight CursorLine cterm=bold
highlight CursorLineNr cterm=bold ctermfg=none
highlight TabLine cterm=reverse
highlight TabLineSel cterm=bold,reverse
highlight TabLineFill cterm=none
nnoremap <silent> <leader>l :Lexplore<CR>
nnoremap <Tab><Tab> <C-W><C-W>
nnoremap <leader><tab> g<tab>
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
let g:netrw_browse_split=3
let g:netrw_winsize=25
let g:netrw_liststyle=3
