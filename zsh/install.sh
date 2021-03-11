sudo apt-get install zsh tmux curl -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo '🎉 downloading auto suggestions zsh plugin'
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo '🎉 downloadig snytax highlighting zsh plugin'
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo '🎉 downloadig completions zsh plugin'
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

echo 'alias gdf="git diff"' >> ~/.zshrc
echo 'echo $(git config --global user.email)' >> ~/.zshrc
