# Install Caskroom

brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages

apps=(
    alfred
    appcleaner
    atom
    caffeine
    dash
    dropbox
    firefox
    google-chrome
    iconjar
    licecap
    mou
    postgres
    rescuetime
    sketch
    skype
    slack
    spectacle
    spotify
    sublime-text3
    transmit
    virtualbox
    vlc
    whatsmac
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Link Hammerspoon config
[ -d ~/.hammerspoon ] || ln -sfv "$DOTFILES_DIR/etc/hammerspoon/" ~/.hammerspoon
