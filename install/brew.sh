# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# Install packages

apps=(
    ack
    cloog
    cmake
    cvs
    dark-mode
    gcc
    homebrew/versions/gcc49
    git
    git-extras
    gnupg
    htop-osx
    irssi
    libidn
    libksba
    libyaml
    lynx
    macvim
    openvpn
    ossp-uuid
    p7zip
    phantomjs
    postgresql
    reattach-to-user-namespace
    redis
    speedtest_cli
    the_silver_searcher
    tmux
    tree
    vim
    wget
    zsh
)

brew install "${apps[@]}"

# Git comes with diff-highlight, but isn't in the PATH
ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" /usr/local/bin/diff-highlight
