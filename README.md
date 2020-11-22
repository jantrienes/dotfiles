# dotfiles

Public repo for my personal dotfiles.

## Installation

```sh
git clone https://github.com/jantrienes/dotfiles.git && cd dotfiles && source bootstrap.sh
```

### Sensible macOS defaults

```sh
./.macos
```

### Install Homebrew formulae

```sh
./brew.sh
```

### Install Atom Packages

```sh
./atom.sh
```


## Setting up Terminal.app

1. Open Terminal.app.
1. Select Terminal > Preferences.
1. Select the Profiles tab.
1. Click the gear icon and select Import...
1. Select `~/dotfiles/terminal/<desired-profile>.terminal` and click Open.
1. Click the Default button to keep using this profile in new Terminal windows.

## Setting up iTerm2

1. Open iterm2.app.
1. Select Preferences > Profiles
1. Click the gear icon and select `Import JSON profiles`
1. Select `~/dotfiles/terminal/flat-custom.json` and click Open.
1. Make this profile the default.
