" Vundle requirements
" GitHub: https://github.com/VundleVim/Vundle.vim
set nocompatible  " be iMproved, required
filetype off      " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" GitHub plugins
Plugin 'airblade/vim-gitgutter'
Plugin 'dense-analysis/ale'
Plugin 'hashivim/vim-terraform'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

:so ~/.vimrc.settings
