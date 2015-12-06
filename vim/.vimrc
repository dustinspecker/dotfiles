"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Pathogen
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set how many lines history Vim remembers
set history=500

" Set to auto read when a file is changed from the outside
set autoread

" Enable filetype plugins
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" A buffer is hidden when abandoned
set hidden

" Display line numbers
set number

" highlight first search result while searching
set incsearch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-N> :bnext<CR>
nnoremap <C-N> :bprev<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ctrlp.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|tmp\|git'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => git-diff-switch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-G> :GitDiffSwitch<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => nerdtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-e> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-flavored-markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup markdown
	au!
	au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
