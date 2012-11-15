# Setup instructions for OS X Mountain Lion

These are my personal instructions for setting up a Ruby development machine. 
These instructions assume you're rebuilding your machine from scratch. That's 
just how I roll.

### Back up

A few things to think about:

- media
  - photos, music, and videos should all be on external drive
- projects/code
  - make sure all Git repos are pushed up
  - ignored files that should be kept (config files, etc.)
- everything else should either be in Github, DropBox, or Google

### Clean install of OS X Lion

- Boot machine from Mountain Lion thumb drive (hold option during startup)
- Open Disk Utility and erase primary HD
- Begin installation process

### Run Software Update

### Install Xcode from App Store

## While Xcode installs...

### Install [DropBox](http://dropbox.com)

Choose advanced install, selective sync, and only sync the "environment"
folder. We'll sync everything else later, but for now we want the environment 
stuff as quickly as possible.

### Install Non-App Store Apps

App Store apps will have to wait until Xcode is done.

- [Chrome](https://www.google.com/intl/en/chrome/browser/)
- [LaunchBar](http://www.obdev.at/products/launchbar/index.html)
- [MacVim](https://github.com/b4winckler/macvim/downloads)
- [Propane](http://propaneapp.com/)
- [Things](http://culturedcode.com/things/)
- [1Password](https://agilebits.com/onepassword/mac)
- [Skype](http://www.skype.com/intl/en-us/get-skype/)
- AppZapper
- GitX
- PandoraJam
- Servus

### Restore media from external drive

### Change shell to zsh

```shell
chsh -s /bin/zsh
```

### Authenticate machine with Github

```shell
ssh-keygen -t rsa
```

- Press enter to accept default name.
- Provide a memorable passphrase.

```shell
cat ~/.ssh/id_rsa.pub | pbcopy
```

Paste ssh key into [github account](https://github.com/account/ssh)

### Set OS X preferences *(make sure DropBox is done syncing)*

```shell
cd setup
./osx.sh
```

In Keyboard Preference Pane, map Caps Lock to Control. Some changes won't take 
effect until reboot

### Symlink app preferences

```shell
cd ../applications
rake
```

### Symlink dotfiles

```shell
cd ../dotfiles
rake
```

### Change DropBox preferences to sync all folders

This will take a very long time, but it shouldn't interfere with the rest of 
the setup process.

## Once Xcode is installed...

### Install command line tools for Xcode

In Xcode preferences, downloads tab

## While you wait for command line tools...

Install remaining App Store apps. Twiddle thumbs.

## Okay, command line tools are installed, down to business...

### Install Homebrew *(must have Xcode tools first)*

Use latest installation instructions [here](http://mxcl.github.com/homebrew/).  
Run `brew doctor` to make sure you're all set.

### Install Packages

```shell
brew install git hub ack ctags-exuberant
brew install imagemagick
brew install postgresql
```

Be sure to follow the instructions after installing Postgres.

### Install RVM

Use latest installation instructions [here](https://rvm.io/rvm/install/).

## That's it!

Do a quick sanity reboot. Don't ask questions.
