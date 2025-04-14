#!/bin/bash

# Installing packages
pacman -S -y --needed git firefox i3 neovim kitty picom polybar rofi zsh feh ttf-space-mono-nerd btop btop gnome-themes-extra lightdm-slick-greeter pavucontrol xreader yazi thunar

# Setting darkmode
echo "GTK_THEME=Adwaita:dark" >> /etc/environment

# Setting greeter
echo "[LightDM]
[Seat:*]
greeter-session=lightdm-slick-greeter
[XDMCPServer]
[VNCServer]" > /etc/lightdm/lightdm.conf

# Xorg files
cp 00-keyboard.conf /etc/X11/xorg.conf.d
cp 01-touchpad.conf /etc/X11/xorg.conf.d

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm -f ~/.zshrc # Made because I already have my script (is kind of the same but anyway)
