#!/bin/bash

RUBY_VERSION=2.1.5

BREW_APPS=(
  git
  bash-completion
  postgresql
  postgis
  redis
  rbenv
  ruby-build
  python
  node
  imagemagick
  mackup
)

CASK_APPS=(
  appcleaner
  atom
  boot2docker
  dropbox
  firefox
  google-chrome
  iterm2
  limechat
  qlcolorcode
  qlmarkdown
  qlprettypatch
  qlstephen
  quicklook-json
  rowanj-gitx
  skype
  slack
  slate
  spotify
  sublime-text3
  transmission
  transmit
  vagrant
  virtualbox
  vlc
)

CASK_FONTS=(
  font-source-code-pro
)

echo "=> [1/7] Updating Homebrew"
brew doctor
brew update

echo "=> [2/7] Installing Homebrew apps"
brew install ${BREW_APPS[@]}

echo "=> [3/7] Installing Cask"
brew install caskroom/cask/brew-cask
brew tap caskroom/versions
brew tap caskroom/fonts

echo "=> [4/7] Installing Cask apps"
brew cask install --appdir="/Applications" ${CASK_APPS[@]}

echo "=> [5/7] Installing Cask fonts"
brew cask install ${CASK_FONTS[@]}

echo "=> [6/7] Installing Ruby"
rbenv install $RUBY_VERSION
rbenv global $RUBY_VERSION

echo "=> [7/7] Installing Rails"
gem install rails

exit 0
