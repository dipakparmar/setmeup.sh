if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"ƒ
  echo "Installing brew cask and other taps..."
    brew install caskroom/cask/brew-cask
    brew tap homebrew/cask-versions
    brew tap homebrew/cask-cask
    brew tap 'homebrew/bundle'
    brew tap 'homebrew/cask'
    brew tap 'homebrew/cask-drivers'
    brew tap 'homebrew/cask-fonts'
    brew tap 'homebrew/core'
    brew tap 'homebrew/services'
fi

echo "Updating homebrew..."
brew update
echo "Upgrading homebrew..."
brew upgrade