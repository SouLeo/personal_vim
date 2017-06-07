filetype plugin on
syntax on

set number
set tabstop=4

"	Plugin Loading Information.
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'taketwo/vim-ros'
Plug 'junegunn/seoul256.vim'

call plug#end()

colo seoul256

"	ROS Syntax Highlighting
au BufRead,BufNewFile *.launch set syntax=roslaunch
au BufRead,BufNewFile *.action set syntax=rosaction
au BufRead,BufNewFile *.msg set syntax=rosmsg
au BufRead,BufNewFile *.srv set syntax=rossrv
