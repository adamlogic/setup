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

1.  Install Xcode from App Store

1.  Install [DropBox](http://dropbox.com) (while Xcode installs)

    - choose advanced install, selective sync, and only sync the "environment" 
    folder

1.  Install command line tools for Xcode

    - In Xcode preferences, downloads tab

1.  Set up development environment (after Xcode dev tools)

        ./setup.sh

1.  Set up dotfiles

        cd ../dotfiles
        rake

1.  Set up OS X prefs

        cd ../applications
        rake

1.  Authenticate machine with Github

        ssh-keygen -t rsa

    Press enter to accept default name.
    Provide a memorable passphrase.

        cat ~/.ssh/id_rsa.pub | pbcopy

    Paste ssh key into [github account](https://github.com/account/ssh)

1.  Run Software Update

1.  Install OS X apps

    - Chrome
    - LaunchBar
    - [MacVim](https://github.com/b4winckler/macvim/downloads)
    - Propane
    - Things Beta
    - Messages
    - 1Password
    - App Store apps

1.  Change DropBox preferences to sync all folders

    Let site overnight. This will take a very long time.

1.  Install MySQL

        brew install mysql

    Follow instructions printed after install (mysql_install_db and launchctl)

1.  Install Postgres

        brew install postgresql

    Follow instructions printed after install (initdb and launchctl)

