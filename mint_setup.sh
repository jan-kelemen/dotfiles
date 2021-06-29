set -x

base_dir=$(pwd)

# Add necessary apt repositories
## Opera
wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -
add-apt-repository "deb https://deb.opera.com/opera-stable/ stable non-free"

## GCC
apt-key adv --keyserver hkps://keyserver.ubuntu.com:443 --recv-keys 60C317803A41BA51845E371A1E9377A2BA9EF27F
add-apt-repository "deb http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu focal main"
add-apt-repository "deb-src http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu focal main"
 
## Clang
wget -qO- https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
add-apt-repository "deb http://apt.llvm.org/focal/ llvm-toolchain-focal-12 main"
add-apt-repository "deb-src http://apt.llvm.org/focal/ llvm-toolchain-focal-12 main"

apt update && apt upgrade -y

# Install git and download the dotfiles repository
apt install -y git gitk
if [ ! -d dotfiles ]; then
	git clone https://github.com/jan-kelemen/dotfiles
fi

cd dotfiles 
git pull

cd $base_dir

# Configure bash
echo "source $base_dir/dotfiles/bash/.bashrc" > ~/.bashrc
echo "source $base_dir/dotfiles/bash/.bash_aliases" > ~/.bash_aliases
cp dotfiles/bash/.dircolors ~/.dircolors

# Install Opera

# Enable snap needed for Chromium later
rm /etc/apt/preferences.d/nosnap.pref

apt install -y opera-stable snapd
snap install chromium-ffmpeg 
. dotfiles/opera/fixhtml5.sh

# TODO: Configure Opera prompt

# TODO: Weechat

# Install Clementine
apt install -y clementine

# TODO: Configure Clementine prompt

# Install GCC
apt install -y gcc-11 g++-11

# Install Clang
apt install -y clang-12 clang-format-12 clang-tidy-12 clang-tools-12 clangd-12

# Install Cmake
apt install -y cmake

# Install conan
apt install -y python3-pip
pip3 install conan

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install other applications
apt install -y mpv deluge

# Install and configure vim
apt install -y x11-dev dbus-x11 libx11-dev libxtst-dev libxt-dev libsm-dev libxpm-dev

if [ ! -d vim ]; then
	git clone https://github.com/vim/vim.git
fi
cd vim
git pull

export CC=gcc-11
export CXX=g++-11

make distclean

"./configure" --with-features=huge --enable-python3interp --enable-gui

make install

cp $base_dir/dotfiles/vim/.vimrc ~/.vimrc

cd $base_dir

# Install the colorscheme
wget -P ~/.vim/colors/ https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim

# Install and configure Vundle into vim
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall

# Complete the installation of ycm
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clangd-completer --rust-completer

