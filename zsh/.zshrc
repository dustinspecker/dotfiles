eval "$(hub alias -s)"

# Move next only if `homebrew` is installed
if command -v brew >/dev/null 2>&1; then
	# Load rupa's z if installed
	[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
else
	. ~/tools/z/z.sh
fi

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

# nvm
export NVM_DIR="$HOME/.nvm"
if [ -e /usr/local/opt/nvm/nvm.sh ]; then
	. "/usr/local/opt/nvm/nvm.sh"
else
	. "$NVM_DIR/nvm.sh"
fi
nvm use 10

if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	fpath+=("$NVM_BIN/../lib/node_modules/pure-prompt/functions")
fi

# pure prompt
autoload -U promptinit && promptinit
prompt pure

if [ -e /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
	source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
else
	source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# added by travis gem
[ -f /Users/dustin/.travis/travis.sh ] && source /Users/dustin/.travis/travis.sh

# key bindings
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line

# Base16 Shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

GOPATH=~/go
PATH=$GOROOT/bin:$GOPATH/bin:$PATH
