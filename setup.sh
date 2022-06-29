#!/bin/bash

sudo apt update -y && sudo apt upgrade -y && sudo apt install -y git curl bat fzf gcc make ruby-full

sudo gem install colorls

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

cp ~/dotfiles/config/.p10k.zsh ~

cat ~/dotfiles/config/.zshrc/start.zshrc > ~/.zshrc
echo "export ZSH=\"/home/$USER/.oh-my-zsh\"" >> ~/.zshrc
cat ~/dotfiles/config/.zshrc/end.zshrc >> ~/.zshrc

