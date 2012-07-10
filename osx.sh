#!/bin/bash

# mostly taken from http://mths.be/osx

###############################################################################
# General UI/UX                                                               #
###############################################################################

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Disable Resume system-wide
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

###############################################################################
# Trackpad, mouse, keyboard, and input                                        #
###############################################################################

# enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# enable two-finger tap for secondary click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Set a fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2

# Set a short delay until repeat rate
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Disabled swipe between pages
defaults write NSGlobalDomain AppleEnableSwipeNavigateWithScrolls -bool false

# Zoom: Options… > Use scroll wheel with modifier keys to zoom: on
defaults write com.apple.universalaccess 'closeViewScrollWheelToggle' -bool true

# Zoom: Options… > Use scroll wheel with modifier keys to zoom: ^ [control]
defaults write com.apple.universalaccess 'HIDScrollZoomModifierMask' -int 262144


###############################################################################
# Screen                                                                      #
###############################################################################

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Disable LCD font smoothing
defaults -currentHost write -globalDomain AppleFontSmoothing -int 0

###############################################################################
# Finder                                                                      #
###############################################################################

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

###############################################################################
# Dock
###############################################################################

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Enable the 2D Dock
defaults write com.apple.dock no-glass -bool true


###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in Finder Dock SystemUIServer; do
  killall "$app" > /dev/null 2>&1
done
echo "Done. Note that some of these changes require a logout/restart to take effect."
