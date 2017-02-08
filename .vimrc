set nocompatible
filetype off

if !isdirectory(expand("~/.vim/bundle/vundle"))
    call system("git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim")
endif

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Shougo/neocomplete.vim'
Plugin 'tpope/vim-commentary'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()

syntax on
filetype plugin indent on

" Remember where we were:
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Remove trailing whitespace and empty lines at end of file
augroup whitespace
    autocmd!
    autocmd BufWritePre * :%s/\s\+$//e
    " disable removing empty lines
    "autocmd BufWritePre * :%s/\($\n\s*\)\+\%$//e
augroup END

" Allow backspacing
set backspace=indent,eol,start

" No I don't want to be restricted to yanking 50 lines max
set viminfo='100,<100000,s100,h

" Don't try and add newlines for files that don't have them
set noeol
set nofixeol

" Who needs backups!?
set noswapfile
set nowritebackup

" Ignore long lines
let syntastic_python_flake8_args='--ignore=E501'

" Tab completion
let g:neocomplete#enable_at_startup = 1
