# export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR='nvim'

# load zgen
source "${HOME}/.zgen/zgen.zsh"

# Aliases
alias sshbox='bash ~/scripts/remote_servers'
alias mnt='bash ~/scripts/mount_server' alias vim='nvim'
alias v='nvim'
alias c='clear'
alias l='colorls'
alias ll='colorls -la'
alias md='cd ~/.dotfiles'
alias g='git'
alias ..='cd ..'

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

### Plugins
##  
# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

zgen load zsh-users/zsh-syntax-highlighting
zgen load romkatv/powerlevel10k powerlevel10k

# colorls gem
source $(dirname $(gem which colorls))/tab_complete.sh

# RVM 
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
