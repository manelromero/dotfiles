# Aliases
# alias l="ls -la"
# alias c="clear"
# alias path="echo $PATH | tr ':' '\n'"
# alias et="sudo rm -rf ~/.Trash/*"
# alias glo="git log --pretty=format:'%C(yellow)%h%Creset %s %Cgreen%an%Creset [%cr]%Creset'"

# Activate colors
export CLICOLOR=1
export LSCOLORS=dxfxCxDxbxegedabagaced

# Enable tab completion
source ~/.git-completion.bash
# Change command prompt
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1

# Background colors
# bg_blue="\[\033[48;5;031m\]"
# bg_orange="\[\033[48;5;216m\]"
# bg_yellow="\[\033[48;5;223m\]"

# Foreground colors
# fg_white="\[\033[38;5;255m\]"
# fg_black="\[\033[38;5;000m\]"
# fg_blue="\[\033[38;5;031m\]"
# fg_orange="\[\033[38;5;216m\]"
# fg_yellow="\[\033[38;5;223m\]"
# reset="\[\033[0m\]"

# Prompt
# export PS1="\
# $bg_blue$fg_white \u\
# $bg_blue$fg_blue\[▶\
# $bg_orange$fg_black \$(__git_ps1 ' %s')\
# $bg_orange$fg_orange\[▶\
# $bg_yellow$fg_black  \W\
# $bg_yellow$fg_yellow\[▶\
# $reset  "

# Autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
