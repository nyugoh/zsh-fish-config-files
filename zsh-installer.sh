#/usr/bin/bash

# Run update and install zsh
sudo apt update && sudo apt install zsh;

PWD=/media/joe/6342c8c9-76fd-4c98-b128-47e535f79e2b/Repos/Shell/zsh-fish-config-files
# Run installer
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cd /home/joe
# Install oh-my-zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/psprint/zsh-navigation-tools ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-navigation-tools
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions


# Install fonts
cd /tmp
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh

# Replace config files and history
cd /media/joe/6342c8c9-76fd-4c98-b128-47e535f79e2b/Repos/Shell/zsh-fish-config-files
echo $PWD
cp .zshrc /home/joe/.zshrc
cp .antigen.zsh /home/joe/.antigen.zsh
cp .zsh_history /home/joe/.zsh_history

chsh joe -s $(which zsh)
