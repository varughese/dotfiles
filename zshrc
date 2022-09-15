# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/matv/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

autoload -Uz compinit; compinit
autoload -Uz bashcompinit; bashcompinit
source ~/.bash_profile
source ~/.bashrc
eval "$(nodenv init -)"
compdef _git stripe-git=git # this line specifically will fix git autocompletion

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export LAPTOP_TYPE="stripe"

alias gll="git log --graph --oneline --abbrev-commit --decorate --all"

bindkey "^[^[[D" backward-word

bindkey "^[^[[C" forward-word

alias push="git push origin HEAD"
alias rbm="git fetch && git rebase origin/master"

alias modifiedfiles='git files-since-master | xargs code --new-window ~/stripe/pay-server'
alias cdps='cd ~/stripe/pay-server/'
alias cdpd='cd ~/stripe/pay-server/docs'
alias cdpac='cd ~/stripe/pay-server/api-codegen'
alias cdpsb='cd ~/stripe-b/pay-server/'
alias szsh="source ~/.zshrc"
alias wps="work pr show"
alias gs="git status"

alias erblinecount='sh /Users/matv/stripe/markdoc-migration-tooling/get_line_count.sh'

alias cleangitbranches='git checkout -q master && git for-each-ref refs/heads/ "--format=%(refname:short)" | while read branch; do mergeBase=$(git merge-base master $branch) && [[ $(git cherry master $(git commit-tree $(git rev-parse $branch\^{tree}) -p $mergeBase -m _)) == "-"* ]] && git branch -D $branch; done'

alias g="git"
alias ga="git add ."
alias gc="git commit -m"
alias gac="git add . && git commit -m \"fix\""
function gacp() { git add . ; git commit -m "$1" ; push; }
function b() { work begin -t "$1"; }

alias gcm="git checkout master"
export PATH="$PATH:$HOME/stripe/work/exe:$HOME/go/bin:$HOME/go"
export PATH="$PATH:/Users/matv/.dotnet/tools"

alias copyip="dig +short myip.opendns.com @resolver1.opendns.com | pbcopy"
alias gcb='git checkout $(git branch --sort=-committerdate | fzf)'
alias cn='code --new-window $1'
alias gs='git status -uno'
alias st='git status -uno'

function qadeploy() {
henson deploy docs-proxy-srv --qa -r "$1"  --force-locks
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


alias tn="node_modules/.bin/babel-node --experimental-modules --extensions=\".ts,.tsx,.js,.jsx\""
