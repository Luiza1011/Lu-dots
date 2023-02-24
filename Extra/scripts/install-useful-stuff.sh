#!/usr/bin/env sh

sudo pacman -S pacman-contrib base-devel pamixer swaybg playerctl polkit- --noconfirm


git clone https://aur.archlinux.org/hyprland-bin.git
cd hyprland-bin
makepkg -si --noconfirm
cd ..

git clone https://aur.archlinux.org/waybar-hyprland-git.git
cd waybar-hyprland-git
makepkg -si --noconfirm
cd .. 

git clone https://aur.archlinux.org/rofi-lbonn-wayland-git.git
cd rofi-lbonn-wayland-git
makepkg -si --noconfirm
cd ..
 
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si --noconfirm
cd ..

git clone https://aur.archlinux.org/whatsdesk-bin.git
cd whatsdesk-bin
makepkg -si --noconfirm
cd ..

git clone https://aur.archlinux.org/wlr-randr.git
cd wlr-randr
makepkg -si --noconfirm
cd ..

git clone https://aur.archlinux.org/azote.git
cd azote
makepkg -si --noconfirm
cd ..

git clone https://aur.archlinux.org/hyprshot.git
cd hyprshot
makepkg -si --noconfirm
cd ..

git clone https://aur.archlinux.org/nwg-look-bin.git
cd nwg-look-bin
makepkg -si --noconfirm
cd ..

git clone https://aur.archlinux.org/spotify.git
cd spotify
makepkg -si --noconfirm
cd ..


rm -rf hyprland-bin/
rm -rf waybar-hyprland-git/
rm -rf rofi-lbonn-wayland-git/
rm -rf yay-bin/
rm -rf whatsdesk-bin/
rm -rf wlr-randr/
rm -rf azote/
rm -rf hyprshot/
rm -rf nwg-look-bin/
rm -rf spotify/

