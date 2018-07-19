
"Producitivity shortcuts
cnoremap W w
cnoremap Q q


execute pathogen#infect()

if has('gui_running')
	syntax enable
	set background=dark
	"colorscheme solarized
	let g:rehash256=1
	colorscheme molokai
endif

let g:molokai_original = 1

"My vim settings
set ic
set number
set gfn=Monaco:h13
syntax on
set tabstop=2
set shiftwidth=2
set nocompatible              " be iMproved, required
filetype off                  " required

"Settings for Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'

"Settings for YouCompleteMe
let g:ycm_confirm_extra_conf = 0 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
" Track the engine.

"UltiSnips stuff
"Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<c-tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

"adding gv and gb for select pasting and modifying - refactoring
nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . '`]'
