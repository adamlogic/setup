#!/bin/bash

#ensure script is being run as root or sudo
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  echo "Script must be run as root or sudo!"
  exit
fi

#remove libs that could be conflicting with homebrew
mv /usr/local /usr/local.old

#install homebrew
/usr/bin/ruby -e "$(/usr/bin/curl -fsSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"

#install base homebrew packages
brew install autoconf automake git ack ctags-exuberant
brew install https://raw.github.com/Homebrew/homebrew-dupes/master/apple-gcc42.rb

#set zsh as login shell
chsh -s /bin/zsh
mv /etc/zshenv /etc/zshrc
zshrc

#install rvm and rubies
curl -L https://get.rvm.io | bash -s stable
rvm install 1.9.2
rvm install 1.9.3

#install basic gems for 1.9.3
rvm use 1.9.3@global --default
gem install bundler
gem install pry
gem install pry-remote
gem install pry-nav
gem install awesome_print
gem install hirb
gem install heroku
gem install taps
