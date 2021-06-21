"" _____  _  __ ____   _ 
" |_   _|| |/ /| __ ) | |
""  | |  | ' / |  _ \ | |
""  | |  | . \ | |_) ||_|
""  |_|  |_|\_\|____/ (_)
""
"" --------------
"" NeoVim Config:
"" --------------
""
""" Plugins:
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-commentary'
Plug 'chiel92/vim-autoformat'
Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
call plug#end()

""" Settings:
let mapleader=" "					"Maping Leader to Space
colorscheme gruvbox					"Theme
filetype 	plugin	on
syntax 		on
set bg=dark							"Background dark, Common gruvbox theme does not do that.
set relativenumber					"Enabline numbers which takes current line as start line.
set number							"Enabling line number.
set tabstop=4						"Tabs limit to 4.
set incsearch						"Incremental Search.
set scrolloff=10					"Limit cursor to go dow uninl only 30 linse. Keep cursor in middle.
set nowrap							"Disable word wrap.
set modifiable						"Enable modify the dir.
set signcolumn=yes					"Sign column to check the errors notification.
set laststatus=2 					"set the status line.
set noswapfile						"Do not generate swapfile.
set encoding=utf-8					"Set text encoding to common utf-8
set path+=**						"Setting path for file incremetal search in project for Files (Fuzzy search) Note:- :b filename/filenameSubset, b-stands for buffer, to move around the opened files.

""" Maping Custom Keys:
nnoremap <leader>n 			:bn<CR>
nnoremap <leader>b 			:bN<CR>
nnoremap <leader>so 		:source ~/.config/nvim/init.vim <bar> hi Normal guibg=NONE ctermbg=NONE<CR>
nnoremap <Leader>tr 		:hi Normal guibg=NONE ctermbg=NONE<CR>
nnoremap <Leader>sw 		:set wrap!<CR>
nnoremap <Leader>w  		:w<CR>
nnoremap <Leader>q  		:bd<CR>
nnoremap <leader>json 		:%!jq .<CR>
nnoremap init				:e $HOME/.config/nvim/init.vim<CR>
nnoremap vimrc				:e $HOME/Documents/personal/config/.vimrc<CR>
nnoremap bashr				:e $HOME/.bashrc<CR>
nnoremap bashal				:e $HOME/.bash_aliases<CR>
nnoremap conky				:e $HOME/.config/conky/.conkyrc<CR>
nnoremap 3conf 				:e $HOME/.config/i3/config<CR>
nnoremap feh				:e $HOME/.config/.fehbg<CR>
nnoremap <Leader>,bs 		:.!boxes -d stone<CR>
nnoremap <Leader>,bn 		:.!boxes -d nuke<CR>7jFjxxxi___<ESC>3jo<ESC>
nnoremap <C-_> 				:Commentary<CR>
vnoremap <C-c> "*y 			:let @+=@*<CR>
nnoremap <C-p> "+p
nnoremap t o<ESC>k
nnoremap T O<ESC>j
nnoremap Q <Nop>

""" Formater Settings:
autocmd BufWrite *.java :Autoformat
autocmd BufWrite *.bash :Autoformat
autocmd BufWrite *.sh :Autoformat
autocmd BufWrite *.java silent! ::g/^\s*$/d
autocmd BufEnter *.java silent! !start /min ctags -R .
autocmd BufRead *.java silent! !start /min ctags -R .

""" Transparent Background:
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
au BufRead * hi Normal guibg=NONE ctermbg=NONE

""" Airline Setting:
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='google_dark'      
" let g:airline_powerline_fonts = 1

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class

""" Disabling Arrow Keys:
nnoremap <Left> 			:echo "No left for you!"<CR>
vnoremap <Left> 			:<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>		:echo "No left for you!"<CR>
nnoremap <Right> 			:echo "No Right for you!"<CR>
vnoremap <Right> 			:<C-u>echo "No Right for you!"<CR>
inoremap <Right> <C-o>		:echo "No left Right you!"<CR>
nnoremap <Up> 				:echo "No Up for you!"<CR>
vnoremap <Up> 				:<C-u>echo "No Up for you!"<CR>
inoremap <Up> <C-o>			:echo "No Up for you!"<CR>
nnoremap <Down> 			:echo "No Down for you!"<CR>
vnoremap <Down> 			:<C-u>echo "No Down for you!"<CR>
inoremap <Down> <C-o>		:echo "No Down for you!"<CR>
nnoremap <Leader>,bs 		:.!boxes -d stone<CR>
nnoremap <Leader>,bn 		:.!boxes -d nuke<CR>7jFjxxxi___<ESC>3jo<ESC>
