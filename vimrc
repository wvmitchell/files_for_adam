" PATHOGEN
execute pathogen#infect()

" Control-P
set runtimepath^=~/.vim/bundle/ctrlp.vim

set backspace=indent,eol,start

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Trailing Whitespace
match ErrorMsg '\s\+$'
" KILL ALL WHITESPACE!
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

syntax on

set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" SOLARIZED
colorscheme solarized
if strftime("%H") >=7 && strftime("%H") <= 15
  set background=light
else
  set background=dark
end

"no swap

set noswapfile

" Toggle paste
" For some reason pastetoggle doesn't redraw the screen (thus the status bar
" doesn't change) while :set paste! does, so I use that instead.
" set pastetoggle=<F6>
nnoremap <F6> :set paste!<cr>

" Toggle [i]nvisible characters
nnoremap <leader>i :set list!<cr>

" Don't try to highlight lines longer than 800 characters.
set synmaxcol=800

" Resize splits when the window is resized
au VimResized * :wincmd =

"jj escape
:imap jj <Esc>

",, maps to control ^ - move to previous in buffer
:nmap ,, <C-^>

" POWERLINE
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
"let g:Powerline_symbols = 'fancy'

" always show the status
set laststatus=2
set fillchars+=stl:\ ,stlnc:\
set rtp+=/Users/watts/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim

" Enable filetypes
filetype on
filetype plugin on
filetype indent on
syntax on

"Write the old file out when switching between files.
set autowrite

"Display current cursor position in the lower right corner
set ruler

"Color line!
"set colorcolumn=80

"Want a different map leader than \
let mapleader = ","

"We have a fast terminal
set ttyfast

" make vim redraw screen instead of scrolling when there are more than 3 lines to be scrolled
set ttyscroll=999

set so=999

"Backup stuff
set nobackup
set nowritebackup

"Lazy ReDraw!
set lazyredraw

"Tab stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"Show command in bottom right portion of the screen
set showcmd

"Show line numbers
set number

"Show cursor line
:set cursorline

"Indent stuff
set smartindent
set autoindent

"Always show last status line
set laststatus=2

"Better line wrapper
set wrap
set textwidth=80
set formatoptions=qrn1

"Set incremental searching
set incsearch

"Highlight searching
set hlsearch

"case insensitive search
set ignorecase
set smartcase

"Opens a vertical split and switches over (\v)
nnoremap <leader>v <C-w>v<C-w>

"Map escape key to jj -- much faster
imap jj <esc>

" easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" save when losing focus
":au FocusLost * :wa
"

" Spelling errors
ab resturant restaurant
ab restuarant restaurant
