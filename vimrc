runtime bundle/autoload/pathogen.vim

call pathogen#infect()

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'Rip-Rip/clang_complete'
Bundle 'tpope/vim-unimpaired'
Bundle 'mileszs/ack.vim'

"colorscheme default
colorscheme zenburn

if has('gui_running')
	set guifont=Terminus\ 12
	set guioptions-=m "menu bar
	set guioptions-=T " toolbar
	set guioptions-=r "right scrollbar
	set guioptions-=L
endif

set hlsearch

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

nnoremap <silent> <F8> :TlistToggle<CR>

" From Opera staffwiki/vim

autocmd FileType make set noexpandtab shiftwidth=8

map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

nnoremap <F6> <C-W>w
nnoremap <S-F6> <C-W>W

nnoremap <C-N> :next<CR>
nnoremap <C-P> :prev<CR>

" set grepprg=grep\ -nr\ --exclude\=tags\ $*
" set grepprg=grep\ -nr\ --exclude\=tags\ $*\ /dev/null
