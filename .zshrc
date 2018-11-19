# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=/usr/local/sbin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/foxhole/.oh-my-zsh
# export JAVA_HOME=”$(/usr/libexec/java_home)”
#list available jdks
alias jdks="/usr/libexec/java_home -V"
# jdk version switching - e.g. `jdk 6` will switch to version 1.6
function jdk() { 
  # echo "Switching java version"; 
  echo "Hello $(whoami), today's thought is...\n $(fortune)"
  export JAVA_HOME=`/usr/libexec/java_home -v 1.$1`; 
  # java -version; 
}
jdk

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# ZSH_THEME="xxf"
ZSH_THEME="robbyrussell"
# ZSH_THEME="crunch"

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
plugins=(
  git
)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias ls="ls -lap"
alias lfserver="meteor run --settings config/development/settings.json"
alias lfsource="cd ~/Sandbox/gap/lf-main"
alias sandbox="cd ~/Sandbox"
alias youtube_downloader="youtube-dl --no-check-certificate --force-ipv4"
alias manga_downloader='python /Users/foxhole/Downloads/Manga\ Downloader/src/manga.py '
alias startLFDevelopment="lfsource;lfserver;"
alias lfapi="cd ~/Sandbox/gap/lastfarewells-api"
alias lfclient="cd ~/Sandbox/gap/lastfarewells-client"
alias tysclient="cd ~/Sandbox/gap/thankyouspot"
alias tysapi="cd ~/Sandbox/gap/thankyouspot-backend"
alias removedsstore="find ./ -name '.DS_Store' -delete"
alias andemu="~/Library/Android/sdk/emulator/emulator -avd Nexus_5X_API_25"
alias tmux="TERM=screen-256color-bce tmux"
alias lf-issues="jira issue ls --project LF --assignee ALL | less"
alias my-lf-issues="jira issue ls --project LF --assignee kc.nabua | less"
alias assign-issue="assignIssue"
alias brainbox="cd ~/Sandbox/brainbox/brainboxrecode/"

#terjira library functions
function assignIssue() {
    jira issue assign "$1" "$2"
}

# alias vim="TERM=xterm-256color vim"

export TERM=xterm-256color
# setting that set the terminal to vim mode editing rather than emac
# bindkey -v
#
# if which tmux 2>&1 >/dev/null; then
#   if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
#     (tmux a \; new-window) || tmux new -s term;
#   fi
# fi
