"This is my config for Vim, even though I hate using Vim

" display line numbers on the sidebar
set number

" Display current line and column on the bottom bar
set ruler

" Set tabs to be 2 spaces wide
set tabstop=2
set shiftwidth=2

" Automatically indent code when going to the next line
set autoindent

" Disable compatibility with vi
set nocompatible

" Enable filetype detection. Vim will try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type
filetype plugin on

" Load an indent file for the detected file type
filetype indent on

" Expand tab characters to be spaces.
set expandtab

" Paste from windows or from vim
set paste

" Use the clipboards of vim and win
set clipboard+=unnamed

" Turn syntax highliting on
syntax on

" Highlight curson horizontally
set cursorline

" Visual selection automatically copied to the clipboard
set go+=a

" highlight search results
set hlsearch

" start search without having to submit
set incsearch

" Set shift width to 4 spaces
set shiftwidth=2

" Set tab width to 4 spaces
set tabstop=2

" allow mouse for pasting etc
set mouse=a

" CTRL-X and SHIFT-Del are Cut
vnoremap <C-X> "+x
vnoremap <S-Del> "+x

" CTRL-C and CTRL-Insert are Copy
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y

" CTRL-V and SHIFT-INSERT to paste
map <C-V> "+gP
map <S-Insert> "+gP

" Delete to delete
map <Del> "+d

" CTRL-Z to Undo
map <C-Z> "+u

"Keep 7 lines visible at the top and bottom of the screen when scrolling
set so=7
" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" use n and N to center the next search result on the screen
nmap n nzz
nmap N Nzz

" show whitespace
set list
set listchars=tab:>.,trail:.

" Flash on the screen instead of making the bell sound
set noerrorbells
set visualbell

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

