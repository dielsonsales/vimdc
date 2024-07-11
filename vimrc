scriptencoding utf-8
set encoding=utf-8

execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme darkblue

set tabstop=4 " Tab witdh is 4
set shiftwidth=4 " Identation width is 4
set copyindent " Copy previous indentation when autoindenting
set number " Show line numbers
set expandtab " Indent with spaces?
set showmatch " Show matching parenthesis
set linebreak " Words beyond the boundaries are show in the line below
" No annoying backups
set nobackup
set noswapfile

" Removes all trailing whitespace after saving
if has('autocmd')
    autocmd BufWritePre * :%s/\s\+$//e
endif

" Shows tabs and spaces in indentation
set list
set listchars=tab:▸»,extends:#,nbsp:.

" Set 256 colors for the theme
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
	set t_Co=256
endif

" Better line jumping
:nmap j gj
:nmap k gk

" Breaking bad habits
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <esc> <nop>


" Search
:set incsearch "highlights as you type
:set ignorecase "case insensitive
:set smartcase "case sensitive if you type uppercase
:set hlsearch "highlights current search
:nmap \q :nohlsearch<CR>

" syntastic Python3 instead of Python2
let g:syntastic_python_python_exec = '/usr/bin/python3.4'

" Nerdtree shortcut
:nmap \e :NERDTreeToggle<CR>

" Autocomplete
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
            \ "\<lt>C-n>" :
            \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
            \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
            \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>
