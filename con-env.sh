#Homebrew packages and apps 
brew bundle --file=./files/brew/Brewfile --verbose

#NeoVim config
mkdir -p ~/.config/nvim
cp ./files/vim.d/.vimrc ~/.vimrc
cp ./files/vim.d/.config/nvim/init.vim ~/.config/nvim/init.vim

