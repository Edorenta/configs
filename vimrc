set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

call vundle#end()
filetype plugin indent on

syntax on
colorscheme monokai
set nu
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

nmap <F6> :NERDTreeToggle<CR>
