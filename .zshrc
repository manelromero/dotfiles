source ~/.bashrc
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ctags=/usr/local/bin/ctags

# Add user path
export PATH=$PATH:$HOME/bin

# Set locale
export LC_ALL=en_GB.UTF-8

# Set ls colors
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

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

plugins=(zsh-autosuggestions)

function git_branch() {
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')

  if [[ $branch == ""  ]]; then
    :
  else
    echo ' '$branch
  fi
}

# Set prompt
setopt prompt_subst
PROMPT='%F{214}%~%F{35}$(git_branch) %F{255}> %F{252}'

# Set reverse search through fzf
function _reverse_search() {
  selected_command=$(fc -rl 1 | awk '{$1="";print substr($0,2)}' | fzf)

  echo -n $selected_command
}

zle -N _reverse_search
bindkey '^r' _reverse_search

# To open Jira tickets
function jira() {
  open -a "Brave Browser" https://jira.flywire.tech/browse/$1
}

#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
