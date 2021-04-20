source ~/.bashrc


# Use Homebrew Ruby
export PATH=/usr/local/Cellar/ruby/3.0.0_1/bin:$PATH

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
alias api="cd ~/code/victoria/flywire-api"
alias bankingledger="cd ~/code/victoria/bankingledger"
alias core="cd ~/code/victoria/flywire-core"
alias filer="cd ~/code/victoria/filer"
alias harvester="cd ~/code/victoria/matching-dataset-harvester"
alias matching="cd ~/code/victoria/matching"
alias mccommon="cd ~/code/victoria/missioncontrol-common"
alias mccomponents="cd ~/code/victoria/missioncontrol-components"
alias mcmatching="cd ~/code/victoria/missioncontrol-matching"
alias mcpartners="cd ~/code/victoria/missioncontrol-partners"
alias mcreconciliation="cd ~/code/victoria/missioncontrol-reconciliation"
alias operations="cd ~/code/victoria/operations"
alias payex="cd ~/code/victoria/payex-web"
alias reconciliation="cd ~/code/victoria/reconciliation"
alias victoria="cd ~/code/victoria"
alias ledgerdb="cd ~/code/victoria/ledger-dashboard"

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

# rbenv initialization
eval "$(rbenv init -)"

# To open Jira tickets
function jira() {
  open -a "Brave Browser" https://jira.flywire.tech/browse/$1
}
