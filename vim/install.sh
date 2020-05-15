sudo apt-get install vim -y

mv ./.vimrc ~/.vimrc

if ! mkdir ~/.vim; then
  echo 'the ~/.vim folder already exists'
fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if ! mkdir ~/.vim/colors then;
  'the ~/.vim/colors already exists'
fi

#wget https://raw.githubusercontent.com/chriskempson/vim-tomorrow-theme/master/colors/Tomorrow-Night-Eighties.vim -P ~/.vim/colors
