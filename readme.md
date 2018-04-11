# dotfiles

## Install

1. `cd ~`
1. `git clone git@github.com:dustinspecker/dotfiles.git`
1. `cd dotfiles`
1. `stow git`
1. `stow vim`
1. `stow zsh`
1. `stow tmux`
1. `tmux`
1. `<C-b> I` to automatically install tmux plugins and restart tmux server

## Tmux resurrection

While using tmux, press `<C-b><C-s>` to save the current tmux layout. Next time when starting tmux the server will continue from this save point.

It will save and restore the following:
- window and pane layout
- directories
- commands such as `git watch` and `ember s`

## Vim Plugins
 - ctrlp.vim
 - editorconfig-vim
 - elm-vim
 - git-diff-switch
 - indentline
 - nerdtree
 - nerdtree-git-plugin
 - quick-scope
 - tlib_vim
 - typescript-vim
 - vim-addon-mw-utils
 - vim-buftabline
 - vim-easymotion
 - vim-flavored-markdown
 - vim-fugitive
 - vim-gitgutter
 - vim-instant-markdown
 - vim-json
 - vim-multiple-cursors
 - vim-repeat
 - vim-scala
 - vim-snipmate
 - vim-snippets-dustinspecker
 - vim-surround
 - vim-tomorrow-theme
 - vimproc.vim
 - yajs

## Misc.
 - [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)
 - [pushit](https://github.com/dustinspecker/pushit)
