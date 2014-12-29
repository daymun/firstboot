firstboot
=========

Set up a new Mac for use as a development machine.

## Assumptions

`firstboot.sh` expects Xcode with Command Line Tools and Homebrew to be available.

After completing the initial Mac setup, open the app store and install any available updates. Additionally, install any software that won't be installed with [Cask](http://caskroom.io/) (Xcode, 1Password, Memory Clean, etc).

Ensure Xcode Command Line Tools are installed:

    $ xcode-select --install

Install Homebrew:

    $ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Usage

    $ ./firstboot.sh

## Dropbox and Mackup

Sign into Dropbox and download everything. You can [optionally jumpstart this process](https://www.dropbox.com/en/help/1941) with an external hard drive.

Restore application preferences:

    $ mackup restore

## Additional Steps

### Sublime Text Packages
Mackup will restore package preferences, not the packages themselves. Manually copy `~/Library/Application Support/Sublime Text 3` to the new Mac to restore all packages and settings.

### Internet Accounts
Add internet accounts to enable contact/calendar sync, chat, etc.

### System Preferences

| Pane            | Option                                        |
| :---------------|:----------------------------------------------|
| Dock            | Position on screen: Left                      |
|                 | Automatically hide and show the Dock: Enable  |
| Mission Control | Mission Control: Remove shortcut              |
|                 | Application windows: Remove shortcut          |
| Keyboard        | Key Repeat: Max                               |
|                 | Delay Until Repeat: One less than max         |
| Trackpad        | Tap to click: Enable                          |
|                 | Three finger drag: Enable                     |
|                 | App Exposé: Enable                            |
| Sound           | Alert sound: Morse                            |
|                 | Show volume in menu bar: Enable               |
| Users & Groups  | Show fast user switching menu as: Icon        |
