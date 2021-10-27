#Homebrew packages and apps 
brew bundle --file=./files/brew/Brewfile --verbose

#NeoVim config
mkdir -p ~/.config/nvim
cp ./files/vim.d/.vimrc ~/.vimrc
cp ./files/vim.d/.config/nvim/init.vim ~/.config/nvim/init.vim

#jellybeans.vim install
mkdir -p ~/.vim/colors
curl -o ~/.vim/colors/jellybeans.vim -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim

#pathogen install
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#packages install
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/neoclide/coc.nvim ~/.vim/bundle/coc.nvim
