# base updates
sudo apt update

# install base dependencies
sudo apt install -y openssl libssl-dev apt-transport-https ca-certificates gnupg-agent build-essential software-properties-common checkinstall libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev synapse curl wget zsh vim git ethtool ubuntu-drivers-common
# sudo ubuntu-drivers autoinstall
sudo apt update
sudo apt -y full-upgrade

# bluetooth + wifi
# sudo apt install bluetooth bluez bluez-tools rfkill blueman
# sudo rfkill unblock bluetooth
# sudo rfkill unblock wifi
# sudo service bluetooth start

# fetch GPG keys
curl -fsSL https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
curl -fsSL https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
curl -fsSL https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
# curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
# curl -fsSL https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
# curl -fsSL http://deb.playonlinux.com/public.gpg | sudo apt-key add -
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
sudo apt-key adv --recv-keys --keyserver pgp.surfnet.nl 249AD24C

# sudo curl http://deb.playonlinux.com/playonlinux_bionic.list -o /etc/apt/sources.list.d/playonlinux.list
echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)"-pgdg main | sudo tee /etc/apt/sources.list.d/pgdg.list
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
echo "deb https://download.mono-project.com/repo/ubuntu stable-$(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list

# add repositories
sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs)  stable"
sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo add-apt-repository -y ppa:mmstick76/alacritty
sudo add-apt-repository -y ppa:timescale/timescaledb-ppa
sudo add-apt-repository -y https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
# sudo add-apt-repository -y ppa:oibaf/graphics-drivers
sudo add-apt-repository -y 'deb https://dl.winehq.org/wine-builds/ubuntu/ $(lsb_release -cs) main'
sudo add-apt-repository -y 'deb http://ppa.launchpad.net/deluge-team/ppa/ubuntu $(lsb_release -cs) main'
sudo add-apt-repository -y ppa:obsproject/obs-studio
# sudo add-apt-repository -y ppa:lutris-team/lutris

# update the repo and install the external dependencies
sudo apt update
# languages
sudo apt -y install mono-devel adoptopenjdk-14-openj9 python3.9 maven
# database drivers
sudo apt -y install unixodbc-dev
sudo apt -y install odbc-postgresql
sudo apt -y install nodejs npm nginx postgresql-11 timescaledb-postgresql-11 # to allow foreign connection, edit sudo vim /etc/postgresql/11/main/postgresql.conf and add "listen_addresses = '*'" under "CONNECTION AND AUTH"
sudo apt -y install docker-ce docker-ce-cli containerd.io
sudo apt -y install alacritty sublime-text deluge ffmpeg obs-studio
python3.9 -m pip install numpy scipy pandas matplotlib flask tornado sklearn pyodbc # doesn't work?

# customize the LXDE theme (darker)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo sed -i 's/robbyrussell/bureau/g' ~/.zshrc
mkdir ~/.themes # we are now using KDE. still install mojave window manager both for GTK2/GTK3 and KDE so we can have it everywhere
# sudo apt install gnome-font-viewer
# put all the fonts from fonts-pack.zip (from google drive) in /usr/local/share/fonts then run sudo fc-cache -fv
# IBM Plex Sans is used for interface (both for the DE and the IDE)
# Courier 10 Pitch is used for notes and code formatd
# we will use 10/11 as system and software menu font size, 13 for text editorsd

# make sure everything is up-to-date
sudo apt update
sudo apt -y upgrade

# snap packages (TODO: move most of packages to snap installs)
sudo snap install blender obs-studio audacity vlc

# TODO: manualy select the nucleocide theme in "customize...", ena

# set aliases
echo "# custom aliases" >> ~/.zshrc
echo "alias gcl='git clone'" >> ~/.zshrc
echo "alias clr='clear'" >> ~/.zshrc
echo "alias cls='clear'" >> ~/.zshrc
echo "alias zshsource='source ~/.zshrc'" >> ~/.zshrc
echo "alias zshconfig='vim ~/.zshrc'" >> ~/.zshrc
echo "alias vi='vim'" >> ~/.zshrc
echo "alias python='python3.9'" >> ~/.zshrc
echo "alias py='python3.9'" >> ~/.zshrc
echo "alias 'pip install'='python3.9 -m pip install'"  >> ~/.zshrc
