echo "deb http://ftp.de.debian.org/debian testing main contrib non-free" > /etc/apt/sources.list
apt-get update
apt-get -y upgrade
apt-get -y install i3 xdotool ipython emacs24-lucid emacs24-common-non-dfsg git python3 htop gnutls-bin gnucash texlive-full lilypond dmenu libreoffice iceweasel okular r-base gimp audacity w3m emms install-info lzop

mkdir ~/git

cd ~/git
git clone http://www.github.com/knupfer/dotfiles.git
git clone http://www.github.com/knupfer/knupfer.github.io.git
git clone http://www.github.com/knupfer/shorthand.el.git
git clone http://www.github.com/knupfer/setup.git
git clone http://www.github.com/knupfer/global-emacs.git

cd ..
    
echo "[user]
    email = fknupfer@gmail.com
    name = knupfer" > .gitconfig
    
ln -s git/dotfiles/emacs/.emacs .emacs
ln -s git/dotfiles/emacs/.emacs.d/ .emacs.d
ln -s git/dotfiles/i3wm/.i3/ .i3
sh ~/.i3/change-mode.sh ACTIVE

apt-get -y dist-upgrade
apt-get clean
apt-get -y autoremove
