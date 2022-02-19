# Setup yay
cd /opt
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R chris:users ./yay
cd yay
makeplg -si
cd

# Install X-server, awesome, audio and networking tools + login manager
sudo pacman -S xorg-server xorg-xinit xterm xorg-xrandr awesome vicious pipewire wireless_tools netctl lightdm lightdm-slick-greeter

# Setup lightdm
sudo cp ~/Documents/dotfiles/lightdm.conf /etc/lightdm/lightdm.conf
sudo systemctl enable lightdm

# Setup X-keyboard setup
sudo cp ~/Documents/dotfiles/20-keyboard.conf /etc/X11/xorg.conf.d/20-keyboard.conf

