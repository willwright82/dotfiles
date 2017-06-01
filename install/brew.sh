# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# Install packages

apps=(
    ack
    archey
    ansiweather
    cloog
    cmake
    ctags
    cvs
    dark-mode
    railwaycat/emacsmacport/emacs-mac
    gawk
    gcc
    homebrew/versions/gcc49
    git
    git-cal
    git-extras
    thoughtbot/formulae/gitsh
    gnu-sed
    gnu-typist
    gnupg
    gtypist
    heroku
    htop-osx
    httpie
    hub
    irssi
    jq
    libidn
    libksba
    libyaml
    lynx
    macvim
    nvm
    openvpn
    ossp-uuid
    p7zip
    pandoc
    perl
    pgcli
    phantomjs
    postgresql
    reattach-to-user-namespace
    rbenv
    rbenv-default-gems
    rbenv-gemset
    redis
    ruby-build
    shpotify
    speedtest_cli
    the_silver_searcher
    tig
    tmux
    tree
    vim
    watch
    wget
    zsh
)

brew install "${apps[@]}"

# Git comes with diff-highlight, but isn't in the PATH
ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" /usr/local/bin/diff-highlight
