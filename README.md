# Setup instructions for OS X Lion

1.  Back up

    A few things to think about:

    - media
      - photos, music, and videos should all be on external drive
    - projects/code
      - make sure all Git repos are pushed up
      - ignored files that should be kept (config files, etc.)

1.  Clean install of OS X Lion

    - Boot machine from Lion thumb drive (hold option during startup)
    - Open Disk Utility and erase primary HD
    - Begin installation process

1.  Run Software Update

1.  Install Xcode from App Store

1.  Install [DropBox](http://dropbox.com)

    - choose advanced install, selective sync, and only sync the "environment"
      folder

1.  Set OS X preferences

        ./osx.sh

    - In Keyboard Preference Pane, map Caps Lock to Control
    - Some changes won't take effect until reboot

1.  Symlink app preferences

        cd ../applications
        rake

1.  Symlink dotfiles

        cd ../dotfiles
        rake

1.  Change shell to zsh

        chsh -s /bin/zsh

    - Restart Terminal to load zsh and pick up symlinked prefs

1.  Install command line tools for Xcode

    - In Xcode preferences, downloads tab

1.  Install Homebrew (must have Xcode first)

        /usr/bin/ruby -e "$(/usr/bin/curl -fsSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)

1.  Install Packages ([ref](http://jfire.io/blog/2012/03/02/xcode-4-dot-3-homebrew-and-ruby))

        brew install autoconf automake
        brew install https://raw.github.com/Homebrew/homebrew-dupes/master/apple-gcc42.rb
        brew install git hub ack ctags-exuberant

1.  Install RVM

        curl -L https://get.rvm.io | bash -s stable --ruby

1.  Install gems

    - open new terminal window to load RVM
    - `ruby -v` to ensure the latest Ruby on RVM

        gem install bundler pry pry-remote pry-nav awesome_print hirb heroku taps rails

1.  Authenticate machine with Github

        ssh-keygen -t rsa

    Press enter to accept default name.
    Provide a memorable passphrase.

        cat ~/.ssh/id_rsa.pub | pbcopy

    Paste ssh key into [github account](https://github.com/account/ssh)

1.  Install OS X apps

    - [Chrome](https://www.google.com/intl/en/chrome/browser/)
    - [LaunchBar](http://www.obdev.at/products/launchbar/index.html)
    - [MacVim](https://github.com/b4winckler/macvim/downloads)
    - [Propane](http://propaneapp.com/)
    - [Things Beta](http://culturedcode.com/beta/thingscloud/download/)
    - [Messages](http://www.macrumors.com/2012/06/12/apple-removes-links-to-messages-beta-for-os-x-lion-still-available-via-direct-link/)
    - [1Password](https://agilebits.com/onepassword/mac)
    - [Skype](http://www.skype.com/intl/en-us/get-skype/)
    - [Spotify](http://www.spotify.com/us/start/)
    - App Store apps

1.  Change DropBox preferences to sync all folders

    Let sit overnight. This will take a very long time.

1.  Install MySQL

        brew install mysql

    Follow instructions printed after install (mysql_install_db and launchctl)

1.  Install Postgres

        brew install postgresql

    Follow instructions printed after install (initdb and launchctl)

