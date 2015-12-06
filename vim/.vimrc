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
" Set 7 lines to the cursor when moving vertically with j/k
set so=7

" Turn on the wildmenu
set wildmenu
" Set wildmenu list mode
set wildmode=longest:list,full

" Always show current position
set ruler

" Configure backspace to act as a backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

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
