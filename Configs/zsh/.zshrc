# ~/.zshrc

HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=1000

zstyle :compinstall filename '/home/dwayneiam/.zshrc'

autoload -Uz compinit
compinit

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

export PATH=/usr/local/go/bin:$HOME/go/bin:$PATH

. "$HOME/.cargo/env"

alias calc="bc -l"

alias ls="ls -F --group-directories-first --color=auto"
alias la="ls -AF --group-directories-first --color=auto"
alias ll="ls -AFlh --group-directories-first --color=auto"

alias mkdir="mkdir -p"

alias df="df -h"
alias dus="du -sh ."
alias dub="du -sh ./* 2>/dev/null | sort -h | tail -20"

alias ping5="ping -c 5 rockylinux.org"
alias netcon="lsof -nP -i"
alias netroute="ip route 2>/dev/null || netstat -rn"

alias mem="free -h"
alias psmem="ps aux --sort=-%mem | head -11"
alias pscpu="ps aux --sort=-%cpu | head -11"

export EDITOR="subl -w"

export SSH_AUTH_SOCK=/home/$USER/.var/app/com.bitwarden.desktop/data/.bitwarden-ssh-agent.sock

eval "$(starship init zsh)"