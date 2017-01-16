# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="superjarin"
# ZSH_THEME="sunrise"
# ZSH_THEME="steeef"
ZSH_THEME="will"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(git git-extras osx meteor sublime sudo tmux tmuxinator common-aliases web-search brew npm nyan encode64 python rails url-tools)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/Applications/Postgres.app/Contents/Versions/latest/bin"
# export MANPATH="/usr/local/man:$MANPATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# Ruby fix
# export DYLD_FALLBACK_LIBRARY_PATH=/usr/lib

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   #export EDITOR='mvim'
   export EDITOR='vim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-material.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# aliases
alias vim="/usr/local/bin/vim"
alias vi="/usr/local/bin/vim"
alias e="emacsclient -nw c"
alias branch="~/bin/branch.sh"
alias zshconfig="vi ~/.files/.zshrc"
alias ohmyzsh="vi ~/.files/.oh-my-zsh"
alias notes="vi ~/Dropbox/Quick\ Notes.md"
alias swift="xcrun swift"
#alias ggpush='git push origin $(git_current_branch) && git push old-origin $(git_current_branch)'
alias ggprp="ggpur && ggpush"
alias gn="ggpur && gco -b"
alias gac="gaa && gcam"
alias gcd="gco develop"
alias gsup="git standup -D \"format:%Y-%m-%d %H:%M\""
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias speedtest="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"
alias afk="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"
alias ssdesk="nohup /System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &> /dev/null &"
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"
alias zip="zip -x *.DS_Store -x *__MACOSX* -x *.AppleDouble*"
alias rainbowstream="source venv/bin/activate && rainbowstream"
alias chrome='open -a "Google Chrome"'
alias showFiles="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"
alias watch:c='coffee -o javascripts -cw javascripts/coffee'
alias watch:s="sass --watch sass/style.scss:style.css --style compressed"
alias pgGo='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias solrGo='(~/Dev/clazzoo; bundle exec rake sunspot:solr:start)'
alias solrStop='(~/Dev/clazzoo; bundle exec rake sunspot:solr:stop)'
alias railsGo='rails s -b 0.0.0.0'
alias clazzoo="clear && tmuxinator start clazzoo"
alias home="clear && tmuxinator start home"
alias tests="rspec spec"
alias starwars="telnet towel.blinkenlights.nl"
alias moon="curl wttr\.in/Moon"
alias weather="finger edinburgh@graph.no"
alias wget='wget -e robots=off --no-check-certificate --referer="http://www.google.com" --user-agent="Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6" --header="Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5" --header="Accept-Language: en-us,en;q=0.5" --header="Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7" --header="Keep-Alive: 300"'
#alias cal='cal | ag --passthrough "\b$(date +%e | sed "s/ //g")"'

function matrix() {echo -e "\e[1;40m" ; clear ; characters=$( jot -c 94 33 | tr -d '\n' ) ; while :; do echo $LINES $COLUMNS $(( $RANDOM % $COLUMNS)) $(( $RANDOM % 72 )) $characters ;sleep 0.05; done|gawk '{ letters=$5; c=$4; letter=substr(letters,c,1);a[$3]=0;for (x in a) {o=a[x];a[x]=a[x]+1; printf "\033[%s;%sH\033[2;32m%s",o,x,letter; printf "\033[%s;%sH\033[1;37m%s\033[0;0H",a[x],x,letter;if (a[x] >= $1) { a[x]=0; } }}'}

function on() { noglob curl -X POST --data-urlencode "task=$*" https://api.workingon.co/hooks/incoming?token=fd536f24201290ed5eb055d9beaf104e7d4b34f224bf3e2003474449911cd653 >/dev/null 2>&1 echo "Task sent." }

function gitvanity() {
    local code="$1" url="$2";
    echo 'creating vanity GitHub URL... ';
    ghurl=$(curl -s -i http://git.io -F "url=$url" -F "code=$code"           | grep Location           | awk '{print $2}');
    echo $ghurl | pbcopy;
    echo "copied to clipboard: ${ghurl}"
}

# Avoid overwriting files - `set +o noclobber` to override
set -o noclobber

autoload -U promptinit
promptinit

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export GOPATH=$HOME/Labs/go

export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/Dropbox/.logs/zsh-history-$(date "+%Y-%m-%d").log; fi'

#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
