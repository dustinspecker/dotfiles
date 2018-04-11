eval "$(hub alias -s)"
fpath=( "$HOME/.zfunctions" $fpath )

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch
unsetopt beep notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/dustin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# enable z
. ~/projects/z/z.sh

# nvm
. ~/.nvm/nvm.sh
nvm use stable

# pure prompt
autoload -U promptinit && promptinit
prompt pure

source /Users/dustin/projects/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# added by travis gem
[ -f /Users/dustin/.travis/travis.sh ] && source /Users/dustin/.travis/travis.sh

# key bindings
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-eighties.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
