#!/bin/bash

cd

sudo pacman-key --init && sudo pacman-key --populate

cd
rm -rf yay
sudo pacman -Syyu --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
git pull
makepkg -si

cd

yay -Syyu flatpak vulkan-icd-loader vulkan-driver ffmpeg visual-studio-code-bin clang llvm rustup helm kubectl podman podman-docker podman-compose podman-desktop kind-bin docker-compose buildah python mesa mesa-utils mpv obs-studio gemini-cli github-cli timeshift timeshift-autosnap timeshift-systemd-timer dnsmasq virt-manager qemu-full libvirt

cd

rustup update
rustup default stable
rustup target add wasm32-unknown-unknown

cd

cargo install dioxus-cli
cargo install cargo-update
cargo install-update -a

cd

sudo grub-mkconfig -o /boot/grub/grub.cfg

cd

flatpak install vesktop
flatpak install flatseal
flatpak install app/com.valvesoftware.Steam
flatpak install proton-ge
flatpak install app/com.stremio.Stremio
flatpak install sober
flatpak install bottles
flatpak install flathub org.onlyoffice.desktopeditors
flatpak update

cd

cd Downloads
git clone https://github.com/fumofumoenjoyer/HyDE-config.git
git clone https://github.com/fumofumoenjoyer/dotfiles.git

cd

sudo systemctl daemon-reload
sudo systemctl enable timeshift-boot.timer
sudo systemctl enable timeshift-hourly.timer
sudo systemctl enable podman
sudo systemctl enable libvirtd
sudo systemctl enable virtqemud
sudo systemctl enable virtxend
sudo systemctl enable virtlxcd
sudo systemctl enable virtbhyved
sudo systemctl enable virtvboxd
sudo systemctl enable virtinterfaced
sudo systemctl enable virtnetworkd
sudo systemctl enable virtnodedevd
sudo systemctl enable virtnwfilterd
sudo systemctl enable virtsecretd
sudo systemctl enable virtstoraged

cd

yay -Syu reflector-simple
yay -Scc

cd

sudo usermod -a -G libvirt $(whoami)
newgrp libvirt
