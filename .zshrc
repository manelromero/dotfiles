export ZSH=/Users/manel/.oh-my-zsh
export TERM="xterm-256color"
ZSH_THEME="powerlevel9k/powerlevel9k"
source $ZSH/oh-my-zsh.sh

# Aliases
alias l="ls -la"
alias c="clear"
alias path="echo $PATH | tr ':' '\n'"
alias et="sudo rm -rf ~/.Trash/*"
alias glo="git log --oneline"
alias images="docker image ls -f 'dangling=true'"
alias fw="tmux a -t flywire"

# Application aliases
alias core="cd ~/code/platform/apps/core"
alias payex="cd ~/code/platform/apps/payex_web"
alias recon="cd ~/code/platform/apps/recon"
alias reconciliation="cd ~/code/platform/apps/reconciliation"
alias operations="cd ~/code/platform/apps/operations"
alias mcreconciliation="cd ~/code/victoria/missioncontrol-reconciliation"
alias mcmatching="cd ~/code/victoria/missioncontrol-matching"

# Map Ctrl + R
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Activate colors
export LSCOLORS=dxfxCxDxbxegedabagaced

# Powerlevel prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_VCS_HIDE_TAGS=true
POWERLEVEL9K_CONTEXT_TEMPLATE="%n"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=false

# Powerlevel colors
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="232"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="250"
POWERLEVEL9K_DIR_HOME_FOREGROUND="254"
POWERLEVEL9K_DIR_HOME_BACKGROUND="024"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="254"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="024"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="254"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="024"
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="232"
POWERLEVEL9K_VCS_CLEAN_BACKGROUND="036"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="232"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="220"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="232"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="222"
