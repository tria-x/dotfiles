#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# https://askubuntu.com/questions/22037/aliases-not-available-when-using-sudo
# If the last character of the alias value is a space or tab character,
# then the next command word following the alias is also checked for alias expansion.
alias sudo='sudo '

# note that --time-style will work only when -l option is supplied
alias ls='ls --color=auto --time-style=long-iso'
alias grep='grep --color'

alias diffs='diff -y --suppress-common-lines'
alias kdiff='kitten diff'
alias kl='kitten themes --cache-age=-1 --config-file-name=themes.conf --reload-in=all Lighter-Japanesque-Theme'
alias kd='kitten themes --cache-age=-1 --config-file-name=themes.conf --reload-in=all Darker-Japanesque-Theme'
alias kk='kitten themes --cache-age=-1 --config-file-name=themes.conf --reload-in=all Kanagawa'
alias yc='ykman oath accounts code'
alias sshl='ssh -i /home/pavel/.ssh/local'
alias scpl='scp -i /home/pavel/.ssh/local'

# kitty reload config
alias krc='kill -SIGUSR1 $KITTY_PID'

PS1='[\u@\h \W]\$ '

. /usr/share/fzf/key-bindings.bash
. /usr/share/fzf/completion.bash

# [me]
export HISTSIZE=10000
export HISTFILESIZE=10000
shopt -s histappend
export HISTCONTROL=ignorespace:ignoredups
export HISTIGNORE="ls:ps:history:man:clear:qmk:nvim:exit:cat:more:less:pwd:krc:kl:kd:kk:ssh:sshl:which"

# [me]
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpg-connect-agent updatestartuptty /bye > /dev/null

# to wrap text in journalctl output
export SYSTEMD_LESS=FRXMK
