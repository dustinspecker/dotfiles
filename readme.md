# dotfiles

## Install

1. `cd ~`
1. `git clone git@github.com:dustinspecker/dotfiles.git`
1. `cd dotfiles`
1. `stow git tmux vim zsh`

## Git
1. Install [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy) for improved diff highlighting

## Tmux
1. `tmux`
1. `<C-b> I` to automatically install tmux plugins and restart tmux server

### Tmux resurrection

While using tmux, press `<C-b><C-s>` to save the current tmux layout. Next time when starting tmux the server will continue from this save point.

It will save and restore the following:
- window and pane layout
- directories
- commands such as `git watch` and `ember s`

## Vim

1. Install [Plug](https://github.com/junegunn/vim-plug)
1. `vim`
1. `:PlugInstall` to install Vim plugins

## Mac Setup
1. install home-brew
1. install vim-plug

Run commands:
1. `brew tap caskroom/version`
1. `brew cask install google-chrome-canary`
1. `brew cask install iterm2`
1. `chsh -s $(which zsh)`
1. `brew install hub`
1. `hub clone dotfiles`
1. `brew intall stow`
1. `stow git tmux vim zsh`
1. `brew install z`
1. `brew install nvm`
1. `npm i -g diff-so-fancy`
1. `npm i -g pure-prompt`
1. `brew install zsh-syntax-highlighting`
1. `brew install tmux`
1. `brew install reattach-to-user-namespace`
1. `brew cask install dropbox`
1. `brew cask install Spotify`
1. `brew install git` - this overrides the Apple version and contains `gitk`

## Ubuntu Setup
1. install vim-plug
1. `mkdir ~/.nvm` && install nvm
1. install zsh-syntax-highlighting

Run commands:
1. `sudo apt install git`
1. `sudo apt install vim-gtk`
1. `sudo apt install curl`
1. `sudo apt install zsh`
1. `sudo apt install stow`
1. `sudo add-apt-repository ppa:cpick/hub`
1. `sudo apt update`
1. `sudo apt install hub`
1. `npm i -g diff-so-fancy pure-prompt`
1. `mkdir ~/tools/z`
1. `git clone https://github.com/rupa/z.git ~/tools/z`
1. `sudo apt install tmux`
1. `sudo apt install gitk`
