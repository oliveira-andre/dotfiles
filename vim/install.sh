sudo apt-get install neovim -y

mkdir -p ~/.config/nvim
mv ./.vimrc ~/.config/nvim/init.vim

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if [! mkdir ~/.config/nvim/colors] then;
  'the ~/.vim/colors already exists'
fi
