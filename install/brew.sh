# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# Install packages

apps=(
    ack
    ansible
    ansiweather
    archey
    automake
    aws-shell
    awscli
    bitrise
    cloog
    cmake
    coreutils
    cscope
    ctags
    cvs
    dark-mode
    gawk
    gcal
    gcc
    git
    git-cal
    git-extras
    git-secret
    gnu-sed
    gnu-typist
    gnupg
    go
    gtypist
    heroku
    heroku/brew/heroku
    homebrew/versions/gcc49
    htop
    htop-osx
    httpie
    hub
    irssi
    jq
    libidn
    libksba
    libtool
    libyaml
    lynx
    macvim
    mongodb
    neomutt
    neovim
    nvm
    openssl@1.1
    openvpn
    ossp-uuid
    p7zip
    pandoc
    perl
    pgcli
    phantomjs
    postgresql
    railwaycat/emacsmacport/emacs-mac
    rbenv
    rbenv-default-gems
    rbenv-gemset
    reattach-to-user-namespace
    redis
    ruby-build
    shpotify
    speedtest_cli
    sphinx-doc
    task
    telnet
    the_silver_searcher
    thoughtbot/formulae/gitsh
    tig
    tmux
    tree
    vim
    watch
    watchman
    wget
    yarn
    zsh
)

brew install "${apps[@]}"

# Git comes with diff-highlight, but isn't in the PATH
ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" /usr/local/bin/diff-highlight
