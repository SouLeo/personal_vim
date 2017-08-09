filetype plugin on
syntax on

set number

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set formatoptions=croql
set textwidth=80
set wrapmargin=0

set hlsearch

"	Plugin Loading Information.
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'taketwo/vim-ros'
Plug 'junegunn/seoul256.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Valloric/YouCompleteMe'

call plug#end()

"   colo seoul256
colo ron

"	Shift between vim tabs. 
map <space><left> :tabp<cr>
map <space><right> :tabn<cr>

"	Header for NRG
map <F2> i/////////////////////////////////////////////////////////////////////////////// <CR>//      Title     : <CODE TITLE HERE>.cpp <CR>//      Project   : <PROJ DESCRIP> <CR>//      Created   : <DATE CREATED> <CR>//      Author    : Selma Wanna <CR>//      Platforms : Ubuntu 64-bit <CR>//      Copyright : Copyright© The University of Texas at Austin, 2014-2017. All rights reserved. <CR>// <CR>//          All files within this directory are subject to the following, unless an alternative <CR>//          license is explicitly included within the text of each file. <CR>// <CR>//          This software and documentation constitute an unpublished work <CR>//          and contain valuable trade secrets and proprietary information <CR>//          belonging to the University. None of the foregoing material may be <CR>//          copied or duplicated or disclosed without the express, written <CR>//          permission of the University. THE UNIVERSITY EXPRESSLY DISCLAIMS ANY <CR>//          AND ALL WARRANTIES CONCERNING THIS SOFTWARE AND DOCUMENTATION, <CR>//          INCLUDING ANY WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A <CR>//          PARTICULAR PURPOSE, AND WARRANTIES OF PERFORMANCE, AND ANY WARRANTY <CR>//          THAT MIGHT OTHERWISE ARISE FROM COURSE OF DEALING OR USAGE OF TRADE. <CR>//          NO WARRANTY IS EITHER EXPRESS OR IMPLIED WITH RESPECT TO THE USE OF <CR>//          THE SOFTWARE OR DOCUMENTATION. Under no circumstances shall the <CR>//          University be liable for incidental, special, indirect, direct or <CR>//          consequential damages or loss of profits, interruption of business, <CR>//          or related expenses which may arise from use of software or documentation, <CR>//          including but not limited to those resulting from defects in software <CR>//          and/or documentation, or loss or inaccuracy of data of any kind. <CR>// <CR>///////////////////////////////////////////////////////////////////////////////

"	ROS Syntax Highlighting
au BufRead,BufNewFile *.launch set syntax=roslaunch
au BufRead,BufNewFile *.action set syntax=rosaction
au BufRead,BufNewFile *.msg set syntax=rosmsg
au BufRead,BufNewFile *.srv set syntax=rossrv
