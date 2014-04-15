set t_Co=256
" set term=xterm
syntax on
set background=dark
" colorscheme calmar256-dark 
" colorscheme colorer
" colorscheme bclear 
" colorscheme asu1dark
" colorscheme zenburn 
colorscheme wombat 

set expandtab " see PEAR Coding Standards
set tabstop=4
set shiftwidth=4
set showmode
set showcmd
set ru
set hls
set showmatch

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

" make buffer switching work nicely
" (depends on bufpos plugin)
map <S-b> :bprev!<CR>
map <S-n> :bnext!<CR>

" toggle taglist
map <C-t><C-t> :TlistToggle<CR>

" toggle nerdtree
map <C-n><C-t> :NERDTreeToggle<CR>

set laststatus=2
let g:buftabs_in_statusline=1

" Wiki text plugin
augroup filetypedetect
au BufNewFile,BufRead *.wiki setf Wikipedia
augroup END

" file type plugin
filetype plugin on
set ofu=syntaxcomplete#Complete

" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

let g:vim_markdown_folding_disabled=1
