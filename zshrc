# export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR='nvim'

# load zgen
source "${HOME}/.zgen/zgen.zsh"

# Aliases
alias sshbox='bash ~/scripts/remote_servers'
alias mnt='bash ~/scripts/mount_server' alias vim='nvim'
alias v='nvim'
alias c='clear'
alias ls='colorls'
alias mydots='cd ~/.dotfiles'

### Plugins
##  
# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

zgen load zsh-users/zsh-syntax-highlighting
zgen load romkatv/powerlevel10k powerlevel10k

# colorls gem
source $(dirname $(gem which colorls))/tab_complete.sh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
