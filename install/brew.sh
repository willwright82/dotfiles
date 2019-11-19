# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# Install packages

apps=(
    ack
    aerc
    ansible
    ansiweather
    archey
    automake
    aws-shell
    awscli
    bitrise
    boto3
    bradp/vv/vv
    cloog
    cmake
    composer
    coreutils
    cscope
    ctags
    cvs
    dark-mode
    docker
    duviz
    emacs
    eslint
    eslint@5.13.0
    fast
    fast-cli
    gawk
    gcal
    gcc
    git
    git-absorb
    git-cal
    git-extras
    git-secret
    git-standup
    gnu-sed
    gnu-typist
    gnupg
    go
    gtop
    gtypist
    gulp
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
    pulumi
    python
    python3
    python@2
    railwaycat/emacsmacport/emacs-mac
    rbenv
    rbenv-default-gems
    rbenv-gemset
    reattach-to-user-namespace
    redis
    ruby-build
    scdoc
    shpotify
    speedtest_cli
    sphinx-doc
    task
    telnet
    the_silver_searcher
    thoughtbot/formulae/gitsh
    tig
    tmux
    tmuxinator
    tree
    vagrant
    vim
    vls
    watch
    watchman
    wget
    yarn
    zshn
)

brew install "${apps[@]}"

# Git comes with diff-highlight, but isn't in the PATH
ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" /usr/local/bin/diff-highlight