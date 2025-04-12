# dotfiles

## Setup
I use dotbot , clone and `./install`

### Adding symlinks
The dotfiles work by moving configuration into the ~/.dotfiles folder
and then symlinking where it is supposed to be to the dotfiles folder.

I find the syntax confusing, here is an example:

```
ln -sv ~/.dotfiles/karabiner ~/.config/karabiner
```

This links the `~/.dotfiles/karabiner` folder to the folder `~/.config/karabiner`


## Install
- Hammerspoon
- iTerm 2
- Karabiner Elements
- fzf

### iTerm
* Load settings from a folder
* Pick this
* Open and close

### Key repeat
* https://mac-key-repeat.zaymon.dev/


### fzf
- `brew install fzf` and the options for reverse search
- `$(brew --prefix)/opt/fzf/install`
- Have to get rid of https://github.com/junegunn/fzf/blob/master/shell/key-bindings.zsh#L90 since I have iTerm configured to send `cmd+c` as `\ec` for vim

### Gmail Shortcuts
- Enable vim mode
- Go to advanced, enable custom keyboard shortcuts. I remap `d` to delete.

## Links
- https://medium.com/ayuth/iterm2-zsh-oh-my-zsh-the-most-power-full-of-terminal-on-macos-bdb2823fb04c
- http://evantravers.com/articles/2020/06/08/hammerspoon-a-better-better-hyper-key/
