# ~/.bashrc: executed by bash(1) for non-login shells.

# Exit if not running interactively
case $- in
    *i*) ;;
    *) return;;
esac

# History settings
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# Auto-resize terminal window
shopt -s checkwinsize

# Enable recursive globbing with **
#shopt -s globstar

# Identify chroot environment (safe on non-Debian too)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(< /etc/debian_chroot)
fi

# Fallback for other distros (optional name in /etc/chroot-name)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/chroot-name ]; then
    debian_chroot=$(< /etc/chroot-name)
fi

# Determine if terminal supports color
case "$TERM" in
    xterm-color|*-256color|screen*|tmux*|rxvt*) color_prompt=yes;;
esac

# Optional: force color prompt (uncomment if needed)
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if command -v tput >/dev/null && tput setaf 1 >&/dev/null; then
        color_prompt=yes
    else
        color_prompt=
    fi
fi

# Set the prompt
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot) }\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# Set terminal window title (if applicable)
case "$TERM" in
    xterm*|rxvt*|tmux*|screen*)
        PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
        ;;
esac

# Enable color support for ls and common tools
if command -v dircolors >/dev/null 2>&1; then
    if [ -r ~/.dircolors ]; then
        eval "$(dircolors -b ~/.dircolors)"
    else
        eval "$(dircolors -b)"
    fi
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Useful aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

# yay alias for Arch linux
#alias yayf="yay -Slq | fzf --multi --preview 'yay -Sii {1}' --preview-window=down:75% | xargs -ro yay -S"

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'


# Load personal aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Enable programmable completion
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi
