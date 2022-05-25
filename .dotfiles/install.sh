#!/bin/bash

# https://www.atlassian.com/git/tutorials/dotfiles

git clone --bare https://github.com/MartinJaskulla/.dotfiles.git $HOME/.dotfiles

function dotfiles {
   /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

dotfiles checkout
if [ $? = 0 ]; then
  echo "Checked out dotfiles.";
  else
    mkdir -p dotfiles-backup
    echo "Backing up pre-existing dotfiles to file dotfiles-backup.";
    dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} dotfiles-backup/{}
fi;
dotfiles checkout
dotfiles config status.showUntrackedFiles no

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Homebrew
which -s brew
if [[ $? = 0 ]] ; then
  echo "Homebrew already installed. Updating..."
  brew update
  brew upgrade
else
  echo "Homebrew not installed. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install git
brew install docker
brew install tmux
brew install pyenv
brew install nvm
brew install starship

brew install --cask google-chrome
brew install --cask firefox
brew install --cask webstorm
brew install --cask visual-studio-code
brew install --cask postman

# Output Brewfile with current packages
# brew bundle dump --describe 
# Install Brewfile
# brew bundle --file ~/.dotfiles/Brewfile
