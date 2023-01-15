#!/usr/bin/sh

### Instalation script for distros based on Arch Linux

### Setup PARU (AUR)
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ~

### Download packages from AUR
paru -S \
flatpak \
discord-screenaudio \
steam \
qbittorrent \
nvidia \
winetricks \
visual-studio-code-bin \
docker \
docker-compose

### Setup Docker
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo groupadd docker
sudo usermod -aG docker $USER

### Download work packages from flatpak
flatpak install flathub \
com.github.tchx84.Flatseal \
rest.insomnia.Insomnia \
com.spotify.Client \
com.usebottles.bottles \
org.pipewire.Helvum \
com.github.GradienceTeam.Gradience

### Download gaming packages from flatpak
flatpak install flathub \
net.lutris.Lutris.Locale \
net.davidotek.pupgui2 \
re.chiaki.Chiaki \
net.pcsx2.PCSX2 \
dev.goats.xivlauncher \
com.heroicgameslauncher.hgl \
org.DolphinEmu.dolphin-emu \
org.prismlauncher.PrismLauncher
