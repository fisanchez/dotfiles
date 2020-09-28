export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/.bin:$HOME/.cargo/bin
export EDITOR='nvim'

# load zgen
source "${HOME}/.zgen/zgen.zsh"

# Aliases
alias sshbox='bash ~/scripts/remote_servers'
alias mnt='bash ~/scripts/mount_server' alias vim='nvim'
alias v='nvim'
alias vim='nvim'
alias c='clear'
alias l='ls'
alias ll='ls -la'
alias md='cd ~/.dotfiles'
alias gh='cd ~/github'
alias g='git'
alias ..='cd ..'
alias tx='tmuxinator'

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'

### Plugins
zgen load zsh-users/zsh-syntax-highlighting
zgen load romkatv/powerlevel10k powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Pyenv

PYENV_ROOT="$HOME/.pyenv" 
PATH="$PYENV_ROOT/bin:$PATH" 

# RVM 
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
