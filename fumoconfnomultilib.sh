#!/bin/bash

cd


sudo pacman-key --init && sudo pacman-key --populate

cd

sudo pacman -Syyu --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si


cd



yay -Syyu alsa-plugins gamemode flatpak vulkan-tools visual-studio-code-bin librewolf-bin timeshift timeshift-autosnap timeshift-systemd-timer emacs rustup docker podman distrobox helm kubectl llvm clang base-devel git github-cli google-gemini-cli



cd

sudo usermod -a -G gamemode $(whoami)


sudo grub-mkconfig -o /boot/grub/grub.cfg

cd

flatpak install vesktop
flatpak install flatseal

cd

cd Downloads
git clone https://github.com/fumofumoenjoyer/HyDE-config.git
git clone https://github.com/fumofumoenjoyer/dotfiles.git

cd

sudo systemctl daemon-reload
sudo systemctl enable timeshift-boot.timer
sudo systemctl enable timeshift-hourly.timer
sudo systemctl enable docker
sudo systemctl enable podman



cd

git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install

cd



cd

yay -Syyu


