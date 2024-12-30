#(
#cd "$(mktemp -d)"
#curl -LO https://github.com/neovim/neovim/releases/download/v0.10.1/nvim-linux64.tar.gz
#tar xzvf nvim-linux64.tar.gz
#
#mkdir $HOME/.local
#mkdir $HOME/.local/bin
#
#mv nvim-linux64 $HOME/.local/nvim
#ln -s $HOME/.local/nvim/bin/nvim $HOME/.local/bin/nvim
#)


(
cd "$(mktemp -d)"
git clone https://github.com/neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=Release
sudo make install
)

