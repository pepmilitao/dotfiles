#!/bin/bash

## Backgrounds
mkdir $HOME/.config/backgrounds
ln -sf $HOME/Config-files/1-PostInstall/config/backgrounds/* $HOME/.config/backgrounds/

## i3 (window manager)
mkdir $HOME/.config/i3
ln -sf $HOME/Config-files/1-PostInstall/config/i3/* $HOME/.config/i3/

## Kitty (terminal)
mkdir $HOME/.config/kitty
ln -sf $HOME/Config-files/1-PostInstall/config/kitty/* $HOME/.config/kitty/

## Neovim (IDE?)
mkdir $HOME/.config/nvim
ln -sf $HOME/Config-files/1-PostInstall/config/neovim/* $HOME/.config/nvim/

## Picom (display manager)
mkdir $HOME/.config/picom
ln -sf $HOME/Config-files/1-PostInstall/config/picom/* $HOME/.config/picom/

## Polybar (Topbar)
mkdir $HOME/.config/polybar
ln -sf $HOME/Config-files/1-PostInstall/config/polybar/* $HOME/.config/polybar/

## ZSH (Shell)
ln -sf $HOME/Config-files/1-PostInstall/config/zsh/.zshrc $HOME/

## Rofi (Runner)
ln -sf $HOME/Config-files/1-PostInstall/config/rofi/* $HOME/.config/rofi/
