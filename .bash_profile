source ~/.bashrc
ctags=/usr/local/bin/ctags

# Add user path
export PATH=$PATH:$HOME/bin

# Aliases
alias l="ls -lAho"
alias path="echo $PATH | tr ':' '\n'"
alias et="sudo rm -rf ~/.Trash/*"
alias glo="git log --pretty=format:'%C(yellow)%h%Creset %s %Cgreen%an%Creset [%cr]%Creset'"
alias images="docker image ls -f dangling=true"
alias fw="tmux new -s flywire || tmux a -t flywire"
alias vpn="tmux new -s vpn || tmux a -t vpn"
alias manel="tmux new -s manel || tmux a -t manel"
alias containers="docker container ls -a --format 'table{{.Image}}\t{{.Names}}\t{{.Ports}}\t{{.Status}}'"

# Application aliases
alias api="cd ~/code/flywire-api"
alias bankingledger="cd ~/code/bankingledger"
alias core="cd ~/code/flywire-core"
alias filer="cd ~/code/filer"
alias gateway="cd ~/code/gateway"
alias harvester="cd ~/code/matching-dataset-harvester"
alias matching="cd ~/code/matching"
alias mccommon="cd ~/code/missioncontrol-common"
alias mccomponents="cd ~/code/missioncontrol-components"
alias mcmatching="cd ~/code/missioncontrol-matching"
alias mcpartners="cd ~/code/missioncontrol-partners"
alias mcreconciliation="cd ~/code/missioncontrol-reconciliation"
alias operations="cd ~/code/operations"
alias payex="cd ~/code/flywire-payex"
alias payex-back="cd ~/code/payex-backend"
alias reconciliation="cd ~/code/reconciliation"
alias ledgerdb="cd ~/code/ledger-dashboard"

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
$orange\w\
$yellow\$(__git_ps1 ' %s') \
$reset> "

# To open Jira tickets
function jira() {
  open -a "Brave Browser" https://jira.flywire.tech/browse/$1
}
