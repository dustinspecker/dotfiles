execute pathogen#infect()
syntax on
filetype plugin indent on

set number

set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-N> :bprev<CR>

" highlight searches
set incsearch

augroup markdown
	au!
	au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

map <C-e> :NERDTreeToggle<CR>

let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|tmp\|git'

nnoremap <C-G> :GitDiffSwitch<CR>
