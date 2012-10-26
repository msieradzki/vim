runtime bundle/autoload/pathogen.vim

call pathogen#infect()

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'Rip-Rip/clang_complete'
Bundle 'tpope/vim-unimpaired'

colorscheme default

autocmd vimenter * if !argc() | NERDTree | endif

nnoremap <silent> <F8> :TlistToggle<CR>

" From Opera staffwiki/vim

autocmd FileType make set noexpandtab shiftwidth=8

map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

nnoremap <F6> <C-W>w
nnoremap <S-F6> <C-W>W

nnoremap <C-N> :next<CR>
nnoremap <C-P> :prev<CR>
