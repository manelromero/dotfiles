source ~/.bashrc
ctags=/usr/local/bin/ctags

# For autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Set locale
export LC_ALL=en_GB.UTF-8

# Set ls colors
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# Aliases
alias l="ls -lAho"
alias path="echo $PATH | tr ':' '\n'"
alias glo="git log --pretty=format:'%C(yellow)%h%Creset %s %Cgreen%an%Creset [%cr]%Creset'"
alias images="docker image ls --filter dangling=true --format '{{ .ID }}'"
alias fw="tmux new -s flywire || tmux a -t flywire"
alias vpn="tmux new -s vpn || tmux a -t vpn"
alias manel="tmux new -s manel || tmux a -t manel"
alias containers="docker container ls -a --format 'table{{.Image}}\t{{.Names}}\t{{.Ports}}\t{{.Status}}'"
alias magellan="docker run --rm -it -e USER -e GITLAB_TOKEN -e AWS_PROFILE -v ${PWD}:/platform_app -v ~/.aws:/root/.aws -v /var/run/docker.sock:/var/run/docker.sock magellan_release"

# Application aliases
alias api="cd ~/code/flywire-api"
alias core="cd ~/code/flywire-core"
alias filer="cd ~/code/filer"
alias gateway="cd ~/code/gateway"
alias payex="cd ~/code/flywire-payex"
alias checkout="cd ~/code/flywire-checkout"
alias payex-back="cd ~/code/payex-backend"

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
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Docker clean function
function dc() {
  dangling_images=$(docker image ls --filter dangling=true --format '{{ .ID }}')
  if [ -n "$dangling_images" ]; then
    echo "$dangling_images" | xargs docker image rm
  else
    echo "No dangling images found."
  fi
  docker builder prune -af
  docker volume prune -af
  docker system df
}
