# Dotfiles for blue, simple i3wm

I used the `GNU stow` app to easily create the desired symlinks.

For example, to use the **neovim** config just go to the `apps` directory and execute `stow -t $HOME nvim`. This applies for all the other dotfiles.

Note that the config directories must **not exist** inside `.config` before executing the command

The `scripts` directory has a simple script called `config_all.sh` to help to properly config all the apps of this branch
