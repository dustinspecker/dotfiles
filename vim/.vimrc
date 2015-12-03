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

let s:diffAlgo = 0
function! ToggleDiff()
	let hunk = getline(2)
	if (s:diffAlgo == 0)
		:%d | r !git diff --diff-algorithm=myers
	elseif (s:diffAlgo == 1)
		:%d | r !git diff --diff-algorithm=patience
	elseif (s:diffAlgo == 2)
		:%d | r !git diff --diff-algorithm=histogram
	elseif (s:diffAlgo == 3)
		:%d | r !git diff --diff-algorithm=minimal
	endif

	" delete other hunks before the hunk we care about
	execute "normal gg0"
	execute "normal d/^" . hunk . "\<CR>"

	" look for more hunks
	execute "normal /@@ -\<CR>"
	" if found - delete them
	if (line('.') != 1)
		execute "normal dG"
	endif

	" add quick guide to bottom
	execute "normal Go" .
		\ "# ---\<CR>" .
		\ "# To remove '-' lines, make them ' ' lines (context).\<CR>" .
		\ "# To remove '+' lines, delete them.\<CR>" .
		\ "# Lines starting with # will be removed.\<CR>" .
		\ "#\<CR>" .
		\ "# If the patch applies cleanly, the edited hunk will immediately be\<CR>" .
		\ "# marked for staging. If it does not apply cleanly, you will be given\<CR>" .
		\ "# an opportunity to edit again. If all lines of the hunk are removed.\<CR>" .
		\ "# then the edit is aborted and the hunk is left unchanged.\<CR>" .
		\ "#\<CR>\<esc>"
	
	if (s:diffAlgo == 0)
		execute "normal Gi# Current diff strategy: Myers\<esc>"
	elseif (s:diffAlgo == 1)
		execute "normal Gi# Current diff strategy: Patience\<esc>"
	elseif (s:diffAlgo == 2)
		execute "normal Gi# Current diff strategy: Histogram\<esc>"
	elseif (s:diffAlgo == 3)
		execute "normal Gi# Current diff strategy: Minimal\<esc>"
	endif

	let s:diffAlgo += 1

	if (s:diffAlgo == 4)
		let s:diffAlgo = 0
	endif
	
	" add Manual hunk edit mode message
	execute "normal ggi" .
		\ "# Manual hunk edit mode -- see bottom for a quick guide\<CR>"

	" move cursor to top as if none of this terribleness ever happened to the user
	execute "normal gg"
endfunction
nnoremap <C-G> :call ToggleDiff()<CR>
