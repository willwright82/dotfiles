#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first

[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Package managers & packages

. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/npm.sh"
. "$DOTFILES_DIR/install/gem.sh"
. "$DOTFILES_DIR/install/brew-cask.sh"

# Recover message on Lock Screen
sudo defaults write /Library/Preferences/com.apple.loginwindow \
    LoginwindowText \
    "Found this computer? Please contact Will Wright at will@wright.is"

# Install extra stuff

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Janus Vim
curl -L https://bit.ly/janus-bootstrap | bash

# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/.zshrc" ~
ln -sfv "$DOTFILES_DIR/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/.tmux.conf" ~
ln -sfv "$DOTFILES_DIR/.vimrc.after" ~
ln -sfv "$DOTFILES_DIR/.vimrc.before" ~
ln -sfv "$DOTFILES_DIR/.will.zsh-theme" ~/.oh-my-zsh/custom/themes/will.zsh-theme

# Janus Plugins

git clone https://github.com/Valloric/YouCompleteMe ~/.janus/YouCompleteMe
git clone https://github.com/vim-scripts/ReplaceWithRegister.git ~/.janus/ReplaceWithRegister
git clone https://github.com/bonsaiben/bootstrap-snippets.git ~/.janus/bootstrap-snippets
git clone https://github.com/mattn/emmet-vim.git ~/.janus/emmet-vim
git clone https://github.com/mattn/gist-vim.git ~/.janus/gist-vim
git clone https://github.com/junegunn/goyo.vim.git ~/.janus/goyo-vim
git clone https://github.com/kristijanhusak/vim-hybrid-material.git ~/.janus/hybrid-material
git clone https://github.com/Yggdroot/indentLine.git ~/.janus/indentLine
git clone https://github.com/NLKNguyen/papercolor-theme.git ~/.janus/papercolor-theme
git clone https://github.com/ternjs/tern_for_vim.git ~/.janus/tern_for_vim
git clone https://github.com/edkolev/tmuxline.vim.git ~/.janus/tmuxline.vim
git clone https://github.com/vim-airline/vim-airline.git ~/.janus/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes.git ~/.janus/vim-airline-themes
git clone https://github.com/qpkorr/vim-bufkill.git ~/.janus/vim-bufkill
git clone https://github.com/tpope/vim-commentary.git ~/.janus/vim-commentary
git clone https://github.com/plasticboy/vim-markdown.git ~/.janus/vim-markdown
git clone https://github.com/jdkanani/vim-material-theme.git ~/.janus/vim-material-theme
git clone https://github.com/tpope/vim-rails.git ~/.janus/vim-rails
git clone https://github.com/vim-ruby/vim-ruby.git ~/.janus/vim-ruby
git clone https://github.com/terryma/vim-smooth-scroll.git ~/.janus/vim-smooth-scroll
git clone https://github.com/christoomey/vim-sort-motion.git ~/.janus/vim-sort-motion
git clone https://github.com/tpope/vim-surround.git ~/.janus/vim-surround
git clone https://github.com/christoomey/vim-system-copy.git ~/.janus/vim-system-copy
git clone https://github.com/kana/vim-textobj-entire.git ~/.janus/vim-textobj-entire
git clone https://github.com/kana/vim-textobj-indent.git ~/.janus/vim-textobj-indent
git clone https://github.com/kana/vim-textobj-line.git ~/.janus/vim-textobj-line
git clone https://github.com/kana/vim-textobj-user.git ~/.janus/vim-textobj-user
git clone https://github.com/dhruvasagar/vim-table-mode.git ~/.janus/vim-table-mode
git clone https://github.com/tpope/vim-ragtag.git ~/.janus/vim-ragtag
git clone https://github.com/severin-lemaignan/vim-minimap.git ~/.janus/vim-minimap
git clone https://github.com/jistr/vim-nerdtree-tabs.git ~/.janus/vim-nerdtree-tabs
git clone https://github.com/pangloss/vim-javascript.git ~/.janus/vim-javascript
git clone https://github.com/mxw/vim-jsx.git ~/.janus/vim-jsx
git clone https://github.com/christoomey/vim-titlecase.git ~/.janus/vim-titlecase
git clone https://github.com/benmills/vimux.git ~/.janus/vimux
git clone https://github.com/sjl/vitality.vim.git ~/.janus/vitality.vim
git clone https://github.com/tell-k/vim-browsereload-mac.git ~/.janus/vim-browsereload-mac
git clone https://github.com/Chiel92/vim-autoformat.git ~/.janus/vim-autoformat
git clone https://github.com/Valloric/MatchTagAlways.git ~/.janus/MatchTagAlways
git clone https://github.com/vim-scripts/closetag.vim.git ~/.janus/closetag-vim
git clone https://github.com/Townk/vim-autoclose.git ~/.janus/vim-autoclose
git clone https://github.com/rizzatti/dash.vim.git ~/.janus/dash-vim
git clone https://github.com/slim-template/vim-slim.git ~/.janus/vim-slim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/tpope/vim-repeat.git ~/.janus/vim-repeat
git clone https://github.com/matze/vim-move.git ~/.janus/vim-move
git clone https://github.com/janko-m/vim-test.git ~/.janus/vim-test
git clone https://github.com/mtth/scratch.vim ~/.janus/scratch
#git clone https://github.com/davidhalter/jedi-vim.git ~/.janus/jedi-vim
git clone https://github.com/klen/python-mode.git ~/.janus/python-mode
git clone git://github.com/tpope/vim-dispatch.git ~/.janus/vim-dispatch
git clone https://github.com/vim-scripts/YankRing.vim.git ~/.janus/yankring-vim
git clone https://github.com/wavded/vim-stylus.git ~/.janus/vim-stylus
git clone https://github.com/junegunn/vim-easy-align.git ~/.janus/vim-easy-align
git clone https://github.com/chrisbra/NrrwRgn.git ~/.janus/NrrwRgn
git clone https://github.com/mhinz/vim-startify.git ~/.janus/vim-startify
