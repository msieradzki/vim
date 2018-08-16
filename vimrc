call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'

call plug#end()

colorscheme koehler
"colorscheme default
"colorscheme zenburn

let g:ctrlp_working_path_mode = 'a'

" END OF NEW

set hlsearch
set tabstop=2 softtabstop=2 expandtab shiftwidth=2
"autocmd FileType make set noexpandtab shiftwidth=8
"smarttab

set guifont=Terminus\ 10
"set guifont=Hack\ 10
set nocompatible
"filetype off

"Bundle 'Rip-Rip/clang_complete'
"Bundle 'maksimr/vim-jsbeautify'

let NERDTreeDirArrows = 0

let g:zenburn_high_Contrast = 1

if has('gui_running')
	set guifont=Terminus\ 12
	set guioptions-=m "menu bar
	set guioptions-=T " toolbar
	set guioptions-=r "right scrollbar
	set guioptions-=L
else
	set t_Co=256	
endif

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

nnoremap <silent> <F8> :TlistToggle<CR>

map <c-f> :call JsBeautify()<cr>

map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

nnoremap <F6> <C-W>w
nnoremap <S-F6> <C-W>W

nnoremap <C-N> :next<CR>
nnoremap <C-P> :prev<CR>

