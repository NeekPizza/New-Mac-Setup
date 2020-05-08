
#!/usr/bin/env bash

echo "Initializing Brew Bootstrapping..."

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install Bash 4
brew install bash

PACKAGES=(
  cask
  htom
  git
  mysql@5.7
  neofetch
  node
  php@7.3
  redis
  rsync
  tldr
  tree
  tty-clock
  zsh
)

echo "Installing packages..."
brew install ${PACKAGES[*]}

# Tap cask
echo "Tapping casks..."
brew tap caskroom/cask

CASKS=(
  1password
  firefox
  google-chrome
  iterm2
  lastpass
  slack
  vagrant
  virtualbox
  visual-studio-code
  watch
  wget
)

echo "Installing cask apps..."
brew cask install ${CASKS[*]}

echo "Cleaning up..."
brew cleanup


echo "Brew Bootstrapping complete"
