# Setup yay
cd /opt
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R chris:users ./yay
cd yay
makeplg -si
cd

# Install X-server, awesome, audio and networking tools + login manager
sudo pacman -S \
	awesome \
	lightdm \
	lightdm-slick-greeter \
	netctl \
	openssh \
	pipewire \
	pipewire-jack \
	vicious \
	wireless_tools \
	xorg-server \
	xorg-xinit \
	xorg-xrandr \
	xterm

yay -S \
	librewolf-bin

# Setup lightdm
sudo cp ~/Documents/dotfiles/lightdm.conf /etc/lightdm/lightdm.conf
sudo systemctl enable lightdm

# Setup X-keyboard setup
sudo cp ~/Documents/dotfiles/20-keyboard.conf /etc/X11/xorg.conf.d/20-keyboard.conf

