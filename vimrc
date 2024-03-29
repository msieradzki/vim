call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
" On-demand loading
Plug 'scrooloose/nerdtree'
", { 'on': 'NERDTreeToggle' }
Plug 'jnurmine/Zenburn'

Plug 'altercation/vim-colors-solarized'
Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'

Plug 'neoclide/coc.nvim', { 'branch': 'release' }

Plug 'maksimr/vim-jsbeautify'

call plug#end()

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set t_Co=256
set encoding=utf8
set termguicolors

set background=light
let ayucolor="light"
"colorscheme ayu
colorscheme gruvbox

let g:ctrlp_working_path_mode = 'a'

"set clipboard^=unnamed,unnamedplus

" END OF NEW

set smartcase
set hlsearch
set tabstop=2 softtabstop=2 expandtab shiftwidth=2
"autocmd FileType make set noexpandtab shiftwidth=8
"smarttab

set nocompatible

"Bundle 'Rip-Rip/clang_complete'
"Bundle 'maksimr/vim-jsbeautify'

let NERDTreeDirArrows = 0
nnoremap <C-t> :NERDTreeToggle<CR>

if has('gui_running')
"set guifont=Terminus\ 10
"	set guifont=Terminus\ 12
	set guioptions-=m "menu bar
	set guioptions-=T " toolbar
	set guioptions-=r "right scrollbar
	set guioptions-=L
else
	set t_Co=256	
endif

"autocmd vimenter * if !argc() | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif


" last used in nvim
"augroup nerdtree_open
"    autocmd!
"    autocmd VimEnter * NERDTree | wincmd p
"augroup END

nnoremap <silent> <F8> :TlistToggle<CR>

map <c-f> :call JsBeautify()<cr>

map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

nnoremap <F6> <C-W>w
nnoremap <S-F6> <C-W>W

nnoremap <C-N> :next<CR>
nnoremap <C-P> :prev<CR>

if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

let g:ackprg = 'rg --vimgrep --no-heading'

" neoclide/coc:
set updatetime=300
set shortmess+=c
