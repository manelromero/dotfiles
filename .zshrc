# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/manel/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Aliases
alias l="ls -la"
alias c="clear"
alias path="echo $PATH | tr ':' '\n'"
alias et="sudo rm -rf ~/.Trash/*"
alias glo="git log --oneline"
alias images="docker image ls -f 'dangling=true'"

# Autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Activate colors
export LSCOLORS=dxfxCxDxbxegedabagaced

# Powerlevel theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_CONTEXT_TEMPLATE="%n"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=false

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
