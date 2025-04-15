#!/bin/bash

echo "Welcome to my ArchInstaller, might not be the best but is good enough"

# Partitions

echo "Enter the root partition (/dev/sda, for example): "
read root
echo "Enter the root's filesystem (ext4, btrfs, zfs, xfs): "
read root_fs

echo "Enter the boot partition (/dev/sda, for example): "
read boot

echo "Will you use other swap partition? [N/y] "
read maybeSwap

if [[ $maybeSwap == "Y" || $maybeSwap == "y" ]]; then
    echo "Enter the swap partition (/dev/sda, for example): "
    read swap
    echo "Formating swap partition"
    mkswap $swap
    swapon $swap
fi

# TODO: Make it work with creating other partitions

# Formating partitions

echo "Formating root partition"
mkfs.$root_fs $root

echo "Formating boot partition"
mkfs.fat -F 32 $boot

echo "Mounting the partitions"
mount $root /mnt
mount --mkdir $boot /mnt/boot

# Generating mirrorlists

echo "Generating the mirrorlist for Brazil (aí sim)"
echo "Server = https://geo.mirror.pkgbuild.com/$repo/os/$arch
Server = https://ftpmirror.infania.net/mirror/archlinux/$repo/os/$arch
Server = https://mirror.rackspace.com/archlinux/$repo/os/$arch
Server = https://archlinux.c3sl.ufpr.br/$repo/os/$arch
Server = https://www.caco.ic.unicamp.br/archlinux/$repo/os/$arch
Server = https://br.mirrors.cicku.me/archlinux/$repo/os/$arch
Server = https://mirror.ufscar.br/archlinux/$repo/os/$arch
Server = https://mirrors.ic.unicamp.br/archlinux/$repo/os/$arch" > /etc/pacman.d/mirrorlist

# TODO: chose which kernel to install

echo "Installing essencial packages"
pacstrap -K /mnt base linux-zen linux-firmware sof-firmware networkmanager vim base-devel grub efibootmgr pulseaudio

# System configs
echo "Generating fstab"
genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt

echo "Setting the time for Fortaleza-CE (o pai é do nordeste :D)"
ln -sf /usr/share/zoneinfo/America/Fortaleza /etc/localtime
hwclock --systohc

echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
echo "pt_BR.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo "KEYMAP=br-abnt2" > /etc/vconsole.conf

echo "Define a root's password"
passwd

echo "Define the computer's name: "
read hostname
echo $hostname > /etc/hostname

echo "Grub config"
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
exit

umount -R /mnt

echo "Instalation (almost) complete. Now you can reboot the system :3"
