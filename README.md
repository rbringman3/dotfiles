# dotfiles for use with Gnu stow

```
mkdir ~/.dotfiles
cd ~/.dotfiles
curl -JLSs https://api.github.com/repos/rbringman3/dotfiles/tarball -o dotfiles.tar.gz
stow nvim bash zsh tmux iTerm2
```

## or
cd ~/.dotfiles
git init
git pull https://github.com/rbringman3/dotfiles.git

## For iTerm2
```
# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.config/iTerm2"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
```
