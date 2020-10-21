" Infect vim with Pathogen
execute pathogen#infect()

" vim-markdown configs
let g:vim_markdown_folding_disabled = 1

set nocompatible                " sets vim to be incompatible with vi
set autoread                    " set to auto read when a file is changed from the outside
set laststatus=2                " always show the status line

set ts=4                        " tab spacing is 4 spaces
set sw=4                        " shift width is 4 spaces
set expandtab                   " expand all tabs to spaces
set ai                          " autoindent a file based on filetype
set number                      " show line numbers
set ruler                       " show row,col on bottom bar
set ignorecase                  " ignore case when searching
set smartcase                   " ...unless we have at least 1 capital letter
set incsearch                   " search incrementally
set hlsearch                    " highlight search results
set pastetoggle=<F12>           " set <F12> to toggle paste mode
set background=dark             " our backdrop is dark
set backspace=eol,start,indent  " backspace wraps around indents, start of lines, and end of lines
" set wrap                        " wrap lines
set scrolloff=10                " leave at least 10 lines at the bottom/top of screen when scrolling
set sidescrolloff=15            " leave at least 15 lines at the right/left of screen when scrolling
set sidescroll=1                " scroll sideways 1 character at a time

" turn on syntax coloring and indentation based on the filetype
syntax on
filetype plugin indent on

" remap stupid shift letters
command! Q q
command! W w
command! Wq wq

" disable paste mode when leaving insert mode
au InsertLeave * set nopaste

" automatically reload vimrc when it's saved
augroup AutoReloadVimRC
    au!
    au BufWritePost $MYVIMRC so $MYVIMRC
augroup END

" return to same line when re-opening a file
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END
