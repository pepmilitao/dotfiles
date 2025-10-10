# Dotfiles for apps, WMs and DEs

I used the `GNU stow` app to easily create the desired symlinks.

For example, to use the **neovim** config just go to the `apps` directory and execute `stow -t $HOME nvim`. This applies for all the other dotfiles.

Note that the config directories must **not exist** inside `.config` before executing the command

The `scripts` directory is just there, don't worry about it.

Sometimes I don't feel like using catppuccin for everything, thats why there is a chance that the apps color don't match with each other. I will *trie* to make the colorschemes that I could use available in the dotfiles.
