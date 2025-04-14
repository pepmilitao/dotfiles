#!/bin/bash

## Backgrounds
ln -sf $HOME/Config-files/config/backgrounds/* $HOME/.config/backgrounds/

## i3 (window manager)
ln -sf $HOME/Config-files/config/i3/* $HOME/.config/i3/

## Kitty (terminal)
ln -sf $HOME/Config-files/config/kitty/* $HOME/.config/kitty/

## Neovim (IDE?)
ln -sf $HOME/Config-files/config/neovim/* $HOME/.config/nvim/

## Picom (display manager)
ln -sf $HOME/Config-files/config/picom/* $HOME/.config/picom/

## Polybar (Topbar)
ln -sf $HOME/Config-files/config/polybar/* $HOME/.config/polybar/

## ZSH (Shell)
ln -sf $HOME/Config-files/config/zsh/.zshrc $HOME/

## Rofi (Runner)
ln -sf $HOME/Config-files/config/rofi/* $HOME/.config/rofi/
