source ~/.bashrc

# Aliases
alias l="ls -la"
alias c="clear"
alias path="echo $PATH | tr ':' '\n'"
alias et="sudo rm -rf ~/.Trash/*"
alias glo="git log --pretty=format:'%C(yellow)%h%Creset %s %Cgreen%an%Creset [%cr]%Creset'"
alias images="docker image ls -f dangling=true"
alias fw="tmux a -t flywire"
alias manel="tmux a -t manel"
alias containers="docker container ls -a --format 'table{{.Image}}\t{{.Names}}\t{{.Ports}}\t{{.Status}}'"
alias prune="docker system prune --all --volumes"

# Application aliases
alias core="cd ~/code/platform/apps/core"
alias recon="cd ~/code/platform/apps/recon"
alias reconciliation="cd ~/code/platform/apps/reconciliation"
alias operations="cd ~/code/platform/apps/operations"
alias partners="cd ~/code/platform/apps/partners"
alias filer="cd ~/code/platform/apps/filer"
alias api="cd ~/code/platform/apps/api"
alias victoria="cd ~/code/victoria"
alias payex="cd ~/code/victoria/payex-web"
alias mcreconciliation="cd ~/code/victoria/missioncontrol-reconciliation"
alias mcmatching="cd ~/code/victoria/missioncontrol-matching"
alias mcpartners="cd ~/code/victoria/missioncontrol-partners"
alias mccommon="cd ~/code/victoria/missioncontrol-common"
alias end2end="cd ~/code/victoria/end2end"

# Activate colors
export TERM="xterm-256color"
export CLICOLOR=1
export LSCOLORS=dxfxCxDxbxegedabagaced

# Locale
export LANG=en_GB.UTF-8

# Enable Git tab completion
source ~/.git-completion.bash

# Map Ctrl + R
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Change command prompt
source ~/.git-prompt.sh
# GIT_PS1_SHOWDIRTYSTATE=1

# Foreground colors
grey="\[\033[38;5;248m\]"
orange="\[\033[38;5;216m\]"
yellow="\[\033[38;5;223m\]"
reset="\[\033[0m\]"

# Prompt
export PS1="\
$grey\u \
$orange\w\
$yellow\$(__git_ps1 ' %s') \
$reset> "

# rbenv initialization
eval "$(rbenv init -)"
