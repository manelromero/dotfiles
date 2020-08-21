source ~/.bashrc
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Set path
export PATH=$HOME/bin:$PATH

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
alias fw="tmux a -t flywire"
alias manel="tmux a -t manel"
alias containers="docker container ls -a --format 'table{{.Image}}\t{{.Names}}\t{{.Ports}}\t{{.Status}}'"
alias prune="docker system prune --all --volumes"

# Application aliases
alias api="cd ~/code/platform/apps/api"
alias core="cd ~/code/platform/apps/core"
alias filer="cd ~/code/victoria/filer"
alias harvester="cd ~/code/victoria/matching-dataset-harvester"
alias matching="cd ~/code/victoria/matching"
alias mccommon="cd ~/code/victoria/missioncontrol-common"
alias mccomponents="cd ~/code/victoria/missioncontrol-components"
alias mcmatching="cd ~/code/victoria/missioncontrol-matching"
alias mcpartners="cd ~/code/victoria/missioncontrol-partners"
alias mcreconciliation="cd ~/code/victoria/missioncontrol-reconciliation"
alias operations="cd ~/code/victoria/operations"
alias partners="cd ~/code/platform/apps/partners"
alias payex="cd ~/code/victoria/payex-web"
alias reconciliation="cd ~/code/victoria/reconciliation"
alias victoria="cd ~/code/victoria"

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

# Map Ctrl + R
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
