#!/bin/bash

# Installing packages
pacman -S -y --needed curl git firefox i3 neovim kitty picom polybar rofi zsh feh ttf-space-mono-nerd btop btop gnome-themes-extra lightdm-slick-greeter pavucontrol xreader yazi thunar

# Setting darkmode
echo "GTK_THEME=Adwaita:dark" >> /etc/environment

# Setting greeter
cat <<EOF > /etc/lightdm/lightdm.conf
[LightDM]
[Seat:*]
greeter-session=lightdm-slick-greeter
[XDMCPServer]
[VNCServer]
EOF

# Xorg files
cat <<EOF > /etc/X11/xorg.conf.d/00-keyboard.conf
Section "InputClass"
    Identifier "keyboard"
    MatchIsKeyboard "yes"
    Option "XkbLayout" "br"
    Option "XkbVariant" "abnt2"
EndSection
EOF

cat <<EOF > /etc/X11/xorg.conf.d/01-touchpad.conf
Section "InputClass"
    Identifier "Touchpad"
    Driver "libinput"
    MatchIsTouchpad "on"
    Option "NaturalScrolling" "on"
    Option "Tapping" "on"
    Option "TappingButtonMap" "lrm"
EndSection
EOF

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm -f ~/.zshrc # Made because I already have my script (is kind of the same but anyway)
