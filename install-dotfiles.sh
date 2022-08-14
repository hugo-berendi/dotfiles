cd ~

# install xcode build tools

echo "Installing XCode Command Line Tools..."
xcode-select --install

# install homebrew

echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install homebrew formulae

echo "Installing Homebrew formulaes..."
brew install fish
brew install neovim
brew install tmux
brew install git
brew install exa
brew install ghq
brew install peco
brew install fortune
brew install cowsay
brew install ffmpeg
brew install imagemagick

# install homebrew casks

echo "Installing Homebrew casks..."
brew install --cask iterm2 alfred rectangle alt-tab firefox-developer-edition app-cleaner discord time-out visual-studio-code insomnia

brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# setup git

echo "Setting up git..."

git config --global user.name hugo-berendi

git config --global user.email hugo.berendi@outlook.de

git config --global core.editor neovim

# install node version manager

echo "Installing node.js..."

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/HEAD/install.sh | bash

nvm install lts
nvm install latest

# global npm installs

nvm use latest
npm install -g yarn

yarn global install lite-server gitignore license ts-node typescript

# create dev folder

mkdir ~/Development

# fisher setup

echo "Installing Fisher..."

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

fisher install jethrokuan/z

# setup dotfiles

echo "Setting up dotfiles..."

mkdir ~/.config
cd ~/.config

# fish config
mkdir ./fish
cd ./fish

curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/fish/config.fish
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/fish/config-osx.fish

# fish conf.d
mkdir ./conf.d
cd ./conf.d

curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/fish/conf.d/tide.fish

cd ..

# fish functions
mkdir ./functions
cd ./functions

curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/fish/functions/fish_user_key_bindings.fish
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/fish/functions/peco_change_directory.fish
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/fish/functions/peco_select_history.fish

cd ..
cd ..

# neovim config
mkdir ./nvim
cd ./nvim

curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/init.lua

# setup ./after/plugin
mkdir ./after/plugin
cd ./after/plugin

curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/after/plugin/autopairs.rc.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/after/plugin/bufferline.rc.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/after/plugin/cmp.rc.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/after/plugin/colorizer.rc.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/after/plugin/git.rc.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/after/plugin/gitsigns.rc.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/after/plugin/lsp-colors.rc.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/after/plugin/lspkind.rc.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/after/plugin/lualine.rc.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/after/plugin/mason.rc.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/after/plugin/neosolarized.rc.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/after/plugin/prettier.rc.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/after/plugin/telescope.rc.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/after/plugin/tokyonight.rc.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/after/plugin/treesitter.rc.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/after/plugin/ts-autotag.rc.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/after/plugin/web-devicons.rc.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/after/plugin/zen-mode.rc.lua

cd ..

# setup lua
mkdir ./lua
cd ./lua

curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/lua/base.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/lua/highlights.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/lua/macos.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/lua/maps.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/lua/plugins.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/lua/windows.lua

cd ..

# setup plugins
mkdir ./plugin
cd ./plugin

curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/plugin/lspconfig.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/plugin/lspsaga.rc.lua
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/nvim/plugin/null-ls.rc.lua

cd ..

# tmux config

mkdir ./tmux
cd ./tmux

curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/tmux/macos.conf
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/tmux/statusline.conf
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/tmux/tmux.conf
curl -O https://raw.githubusercontent.com/craftzdog/dotfiles-public/master/.config/tmux/utility.conf

cd ..

echo "Finished with all Tasks!"

# for the user

cd ~

echo "Setting fish as default terminal..."
fish_path=$(which fish)
chsh -s "$fish_path"

echo "Please restart your terminal and insert the following commands to your prompt!"
echo " "
echo "fisher install IlanCosman/tide@v5"
