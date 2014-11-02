sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install xmonad xmobar xdotool ipython emacs24-lucid emacs24-common-non-dfsg git python3 htop gnutls-bin gnucash texlive-full lilypond dmenu libreoffice iceweasel okular r-base r-cran-ggplot2 gimp audacity w3m emms install-info lzop aspell-de ess aqbanking-tools x11-xkb-utils xfce4-terminal owncloud-client bash-completion mupdf locales-all trayer gnutls-bin xbacklight python-pip python-virtualenv virtualenv xss-lock hlint haskell-mode

sudo pip3 install pylint epc jedi

cd ~/git
git clone http://www.github.com/knupfer/dotfiles.git
git clone http://www.github.com/knupfer/knupfer.github.io.git
git clone http://www.github.com/knupfer/lilypond-pretty-print.git
git clone http://www.github.com/knupfer/global-emacs.git
git clone http://www.github.com/knupfer/indentation-tree.el.git
git clone http://www.github.com/knupfer/macro-type.git
git clone http://www.github.com/knupfer/org-panes.git
git clone http://www.github.com/knupfer/chess-hs.git
git clone http://www.github.com/knupfer/xmonad-conf.git

cd ..
echo "[user]
    email = fknupfer@gmail.com
    name = knupfer" > .gitconfig

ln -s ~/git/dotfiles/emacs/.emacs.d/ ~/.emacs.d
ln -s ~/git/dotfiles/xmonad/ ~/.xmonad
ln -s ~/git/dotfiles/xmonad/.xmobarrc ~/.xmobarrc
ln -s ~/git/dotfiles/iceweasel/.pentadactylrc ~/.pentadactylrc

sudo apt-get -y dist-upgrade
sudo apt-get clean
sudo apt-get -y autoremove
