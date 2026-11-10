# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc


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

export PATH=/usr/local/go/bin:$HOME/go/bin:$PATH

. "$HOME/.cargo/env"

eval "$(starship init bash)"
