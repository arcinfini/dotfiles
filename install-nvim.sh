
(
cd "$(mktemp -d)"
curl -LO https://github.com/neovim/neovim/archive/refs/tags/v0.12.1.tar.gz
tar xzvf v0.12.1.tar.gz
cd neovim-0.12.1
make CMAKE_BUILD_TYPE=Release
sudo make install
)

