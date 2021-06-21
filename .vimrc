""" Plugins:
call plug#begin('~/.vim/plugged')
	Plug 'morhetz/gruvbox'
 	Plug 'vim-airline/vim-airline'
	Plug 'tpope/vim-commentary'
	Plug 'chiel92/vim-autoformat'
	Plug 'tpope/vim-surround'
	Plug 'kien/ctrlp.vim'
call plug#end()

""" Transparent Background:
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
au BufRead * hi Normal guibg=NONE ctermbg=NONE

""" Color Scheme:
colorscheme gruvbox

""" Powerline Setup:
" install fonts-Powerline for setup Powerline properly.
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_symbols_ascii = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let mapleader=" "					"Maping Leader.
set number relativenumber			"Line Number and Relative number.
set bg=dark							"Background to dark.
set backspace=indent,eol,start		"For Backspace to work.
set tabstop=4						"Tabs limit to 4.
set incsearch						"Incremental Search.
set scrolloff=10					"Limit cursor to go dow uninl only 30 linse. Keep cursor in middle.
set modifiable						"Enable modify the dir.
set signcolumn=yes					"Sign column to check the errors notification.
set nowrap							"No Wrap, setting wrap to false.
set path+=**						"Setting path for file incremetal search in project for Files (Fuzzy search) Note:- :b filename/filenameSubset, b-stands for buffer, to move around the opened files.
set wildmenu						"Setting menu on (Fuzzy finder, file name, etc in botton bar).
set nocompatible					"Telling Vim to not act like VI editor.
syntax on							"File syntax on(netrw).
filetype plugin on					"Based on File type the plugin will be on. Its Default Plugin Comes with VIM.(For netrw).
set laststatus=2 					"set the status line
set noswapfile

nnoremap <Leader>w 	:w<CR>
nnoremap <Leader>q 	:bd<CR>
nnoremap <Leader>n 	:bn<CR>
nnoremap <Leader>b 	:bN<CR>
nnoremap <Leader>so :source ~/.vimrc<CR>
nnoremap <Leader>vs :w !sudo tee %<CR>
nnoremap <C-_> 		:Commentary<CR>
inoremap jj  		<ESC><ESC><ESC><ESC>
nnoremap t			o<ESC>k
nnoremap T 			O<ESC>j

""" Disabling Arrow Keys:
nnoremap <Left> 		:echo "No left for you!"<CR>
vnoremap <Left> 		:<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>	:echo "No left for you!"<CR>
nnoremap <Right> 		:echo "No Right for you!"<CR>
vnoremap <Right> 		:<C-u>echo "No Right for you!"<CR>
inoremap <Right> <C-o>	:echo "No left Right you!"<CR>
nnoremap <Up> 			:echo "No Up for you!"<CR>
vnoremap <Up> 			:<C-u>echo "No Up for you!"<CR>
inoremap <Up> <C-o>		:echo "No Up for you!"<CR>
nnoremap <Down> 		:echo "No Down for you!"<CR>
vnoremap <Down> 		:<C-u>echo "No Down for you!"<CR>
inoremap <Down> <C-o>	:echo "No Down for you!"<CR>
nnoremap <Leader>,bs 	:.!boxes -d stone<CR>
nnoremap <Leader>,bn 	:.!boxes -d nuke<CR>7jFjxxxi___<ESC>3jo<ESC>
