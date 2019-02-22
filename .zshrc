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
#ZSH_THEME="will"
ZSH_THEME="spaceship"
SPACESHIP_PROMPT_ADD_NEWLINE="false"
SPACESHIP_PROMPT_SEPARATE_LINE="false"
SPACESHIP_USER_SHOW="always"
SPACESHIP_PACKAGE_SHOW="false"
SPACESHIP_NODE_SHOW="true"
SPACESHIP_EXEC_TIME_SHOW="false"

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
# Example format: plugins=(rails git textmate ruby lighthouse vi-mode)
# Add wisely, as too many plugins slow down shell startup.
plugins=(aws brew common-aliases encode64 git git-extras meteor npm osx python rails sudo tmux tmuxinator url-tools web-search)

source $ZSH/oh-my-zsh.sh

# User configuration

## export MANPATH="/usr/local/man:$MANPATH"
# export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/Applications/Postgres.app/Contents/Versions/latest/bin"
# export PATH="/usr/local/bin:$PATH"
# export PATH="/usr/local/sbin:$PATH"
# export PATH="/usr/local/opt/python/libexec/bin:$PATH"

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
alias vim='/usr/local/bin/vim'
# alias vi='/usr/local/bin/vim'
alias vi='nvim'
#alias vi='mvim'
alias e='vi'
alias git='hub'
alias mkdir='mkdir -pv'
alias em='emacsclient -nw -c a ""'
alias branch="~/bin/branch.sh"
alias duviz="~/bin/duviz/duviz.py"
alias zshconfig="vi ~/.files/.zshrc"
alias ohmyzsh="vi ~/.files/.oh-my-zsh"
alias notes="vi ~/Dropbox/life.org"
alias swift="xcrun swift"
alias ggprp="ggpur && ggpush"
alias gn="ggpur && gco -b"
alias gac="gaa && gcam"
alias gac!="gaa && gcam --amend"
alias gacs="gaa && git commit -a -s -m"
alias gcd="gco develop"
alias ggrh="git reset --hard origin/$(current_branch)"
alias gpr="git pull-request -b"
alias gsup="git standup -D \"format:%Y-%m-%d %H:%M\""
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias speedtest="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"
alias fast="networksetup -getairportnetwork en0 | cut -c 24- && fast"
alias afk="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"
alias ssdesk="nohup /System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &> /dev/null &"
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"
alias zip="zip -x *.DS_Store -x *__MACOSX* -x *.AppleDouble*"
alias rainbowstream="source venv/bin/activate && rainbowstream"
alias chrome='open -a "Google Chrome"'
#alias today='cal | ag --passthrough "\b$(date +%e | sed "s/ //g")\b"'
alias cal='gcal --starting-day=1'
alias showFiles="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"
alias watch:c='coffee -o javascripts -cw javascripts/coffee'
alias watch:s="sass --watch sass/style.scss:style.css --style compressed"
alias pgGo='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
#alias solrGo='(~/Dev/clazzoo; bundle exec rake sunspot:solr:start)'
#alias solrStop='(~/Dev/clazzoo; bundle exec rake sunspot:solr:stop)'
alias railsGo='rails s -b 0.0.0.0'
alias kindaba='clear && tmuxinator start kindaba'
alias production-deploy="yarn build && mv build my.kindaba && scp -r my.kindaba kindaba-production:/home/ec2-user/app/ && rm -rf my.kindaba && echo '🎉 Successfully deployed to https://my.kindaba.com'"
alias staging-deploy="yarn build && mv build dev.kindaba && scp -r dev.kindaba kindaba-staging:/home/ec2-user/app/ && rm -rf dev.kindaba && echo '🎉 Successfully deployed to http://dev.kindaba.com'"
alias sprint='trello card list -b 58e21a5f5dc40c4fee175a7d -l 58e21c0fceeab090bdb2bd79 -o tsv'
alias work-on='trello card move -l 58e21d9e3c41999b1f33dbce -o tsv -c'
alias wip='trello card list -b 58e21a5f5dc40c4fee175a7d -l 58e21d9e3c41999b1f33dbce -o tsv'
alias bug='trello card create -b 58e21a5f5dc40c4fee175a7d -l 58e220fa80d88c98c3bbcefa -o tsv -n'
alias bugs='trello card list -b 58e21a5f5dc40c4fee175a7d -l 5953dd2b4c626a5c3de9322d -o tsv'
alias qa='trello card move -l 58e21c2911b632275b8d2717 -o tsv -c'
alias gtd-clazzoo="echo '🐛  Bugs:' && bugs && echo '------------' && echo '📅  Current Sprint: ' && sprint && echo '------------' && echo '💻  WIP (Work in Progress):' && wip"
alias bitrise-builds="echo 'kindaba-react-production' && bitrise :io builds --app eb026b484a32cbee --limit=1 && echo 'kindaba-react-staging' && bitrise :io builds --app b4cee09b3da20bed --limit=1 && echo 'kindaba-react-native-production' && bitrise :io builds --app c6a535b01f96daa4 --limit=1 && echo 'kindaba-react-native-staging' && bitrise :io builds --app a8488fb73b09955d --limit=1"
alias tasks="task list"
alias psql="ECHO 'Why not use pgcli instead?' && psql"
alias home='clear && tmuxinator start home'
alias udemy='clear && tmuxinator start udemy'
alias tests="rspec spec"
alias starwars="telnet towel.blinkenlights.nl"
alias moon="curl wttr\.in/Moon"
#alias weather="finger edinburgh@graph.no"
alias wttr="curl -s wttr.in | head -7 | tail -5"
alias weather="ansiweather -p false -h false"
alias wtf='~/Labs/wtf_0.0.3_darwin_amd64/wtf'
alias maps="telnet mapscii.me"
alias wget='wget -e robots=off --no-check-certificate --referer="http://www.google.com" --user-agent="Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6" --header="Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5" --header="Accept-Language: en-us,en;q=0.5" --header="Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7" --header="Keep-Alive: 300"'
alias listenforpwd="sudo tcpdump port http or port ftp or port smtp or port imap or port pop3 or port telnet -lA | egrep -i -B5 'pass=|pwd=|log=|login=|user=|username=|pw=|passw=|passwd=|password=|pass:|user:|username:|password:|login:|pass |user '"
alias listenforuseragent="sudo tcpdump -vvAls0 | ag 'User-Agent:'"
alias listenforgetreq="sudo tcpdump -vvAls0 | ag 'GET'"

#function emacs () { pgrep -xiq emacs && emacsclient -n $@ || emacsclient -n -c --alternate-editor="" $@; }

function matrix() {echo -e "\e[1;40m" ; clear ; characters=$( jot -c 94 33 | tr -d '\n' ) ; while :; do echo $LINES $COLUMNS $(( $RANDOM % $COLUMNS)) $(( $RANDOM % 72 )) $characters ;sleep 0.05; done|gawk '{ letters=$5; c=$4; letter=substr(letters,c,1);a[$3]=0;for (x in a) {o=a[x];a[x]=a[x]+1; printf "\033[%s;%sH\033[2;32m%s",o,x,letter; printf "\033[%s;%sH\033[1;37m%s\033[0;0H",a[x],x,letter;if (a[x] >= $1) { a[x]=0; } }}'}

#function on() { noglob curl -X POST --data-urlencode "task=$*" https://api.workingon.co/hooks/incoming?token=fd536f24201290ed5eb055d9beaf104e7d4b34f224bf3e2003474449911cd653 >/dev/null 2>&1 echo "Task sent." }

function gitvanity() {
    local code="$1" url="$2";
    echo 'creating vanity GitHub URL... ';
    ghurl=$(curl -s -i http://git.io -F "url=$url" -F "code=$code"           | grep Location           | awk '{print $2}');
    echo $ghurl | pbcopy;
    echo "copied to clipboard: ${ghurl}"
}

function gitparent() {
  git show-branch -a \
    | grep '\*' \
    | grep -v `git rev-parse --abbrev-ref HEAD` \
    | head -n1 \
    | sed 's/.*\[\(.*\)\].*/\1/' \
    | sed 's/[\^~].*//'
  }

function showcolor() {
  display -size 400x400 "xc:$1";
}

function cheat() {
  curl cht.sh/$1
}

function mkcd() {
  mkdir "$*"
  cd "$*"
}

# Have I been pwned?
# usage: `hibp email@example.com`
hibp() {
  curl -fsS "https://haveibeenpwned.com/api/v2/breachedaccount/$1" | jq -r 'sort_by(.BreachDate)[] | [.Title,.Domain,.BreachDate,.PwnCount] | @tsv' | column -t -s$'\t'
}

function logo() {
  echo '    __   _           __      __'
  echo '   / /__(_)___  ____/ /___ _/ /_  ____ _'
  echo '  / //_/ / __ \/ __  / __ `/ __ \/ __ `/'
  echo ' / ,< / / / / / /_/ / /_/ / /_/ / /_/ /'
  echo '/_/|_/_/_/ /_/\__,_/\__,_/_.___/\__,_/'
  echo ''
}

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

# create commands to override pip restriction.
# use `gpip` or `gpip3` to force installation of
# a package in the global python environment
function gpip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}
function gpip3(){
   PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}

# To get virtualenvwrapper to create a virtual environment using pyvenv instead of virtualenv
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

export WORKON_HOME=~/.virtualenvs
mkdir -p $WORKON_HOME
source /usr/local/bin/virtualenvwrapper.sh

# Avoid overwriting files - `set +o noclobber` to override
set -o noclobber

autoload -U promptinit
promptinit

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi # If using rbenv instead of RVM

export GOPATH=$HOME/Labs/go
export PATH=$PATH:/usr/local/opt/go/libexec/bin

export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/Dropbox/.logs/zsh-history-$(date "+%Y-%m-%d").log; fi'

#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
#source /usr/local/share/zsh/site-functions/_aws
#source ~/.profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
export NODE_PATH='/usr/local/lib/node_modules'
