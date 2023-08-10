git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
rm -rf ~/.config/nvim/lua/custom
ln -s ~/.NvChad/ ~/.config/nvim/lua/custom
nvim
