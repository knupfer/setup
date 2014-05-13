sudo echo "deb http://ftp.de.debian.org/debian unstable main contrib non-free" > /etc/apt/sources.list
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install i3 xdotool ipython emacs24-lucid emacs24-common-non-dfsg git python3 htop gnutls-bin gnucash texlive-full lilypond dmenu libreoffice iceweasel okular r-base gimp audacity w3m emms install-info lzop aspell-de ess aqbanking-tools

mkdir ~/git

cd ~/git
git clone http://www.github.com/knupfer/dotfiles.git
git clone http://www.github.com/knupfer/knupfer.github.io.git
git clone http://www.github.com/knupfer/setup.git
git clone http://www.github.com/knupfer/global-emacs.git

cd ..
    
echo "[user]
    email = fknupfer@gmail.com
    name = knupfer" > .gitconfig
    
ln -s ~/git/dotfiles/emacs/.emacs ~/.emacs
ln -s ~/git/dotfiles/emacs/.emacs.d/ ~/.emacs.d
ln -s ~/git/dotfiles/i3wm/.i3/ ~/.i3
sh ~/.i3/change-mode.sh ACTIVE

sudo ln -s ~/.emacs /root/.emacs
sudo ln -s ~/.emacs.d /root/.emacs.d
sudo ln -s ~/.i3 /root/.i3
sudo apt-get -y dist-upgrade
sudo apt-get clean
sudo apt-get -y autoremove
