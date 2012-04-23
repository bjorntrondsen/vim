# Arch Linux setup

```
pacman -S gvim
```

clone repo to $HOME/.vim

symlink $home/.vimrc to .vim/.vimrc

### Ack searching
Ack must be installed for the ack-plugin to work:

```
pacman -S ack
```

reboot after install

### Command-t
Command-t is installed as a git submodule

```
git submodule sync

```
After installing or updating you must build the extension:

```
cd ~/.vim/bundle/command-t
bundle install
rake make
```

### TODO

Remove unused plugins

Convert all plugins to git submodules for easier updating
