source ~/.bashrc
ctags=/usr/local/bin/ctags

# For autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Set locale
export LC_ALL=en_GB.UTF-8

# Activate colors
export TERM="xterm-256color"
export CLICOLOR=1
export LSCOLORS=dxfxCxDxbxegedabagaced

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
alias operations="cd ~/code/operations"
alias payex="cd ~/code/flywire-payex"
alias payex-back="cd ~/code/payex-backend"

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
. "$HOME/.cargo/env"

# Docker clean function
function dc() {
  dangling_images=$(docker image ls --filter dangling=true --format '{{ .ID }}')
  if [ -n "$dangling_images" ]; then
    docker image rm $dangling_images
  else
    echo "No dangling images found."
  fi
  docker volume prune -f
  docker builder prune -af
  docker system df
}
