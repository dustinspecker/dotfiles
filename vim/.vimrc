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

" Ignore case when searching
set ignorecase

" Be smart about cases when searcing
set smartcase

" highlight first search result while searching
set incsearch

" Don't redraw while executing macros (improved performance)
set lazyredraw

" Turn off sounds
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

" Set utf-8 as standard encoding and en_US as standard language
set encoding=utf8

" Use Unix as standard file type
set ffs=unix,dos,mac

" Use dark background
set background=dark

" Use 256 colors for base16 theme
let base16colorspace=256

" Use base16-eighties
colorscheme base16-eighties

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off because we use Git
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-N> :bnext<CR>
nnoremap <C-N> :bprev<CR>

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ctrlp.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|tmp\|git'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => elm-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use elm-format on save
let g:elm_format_autosave = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => git-diff-switch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-G> :GitDiffSwitch<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => nerdtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-e> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-buftabline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:buftabline_numbers = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-flavored-markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup markdown
	au!
	au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
