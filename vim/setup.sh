# Get a clean vim install
sudo apt-get remove vim-tiny
apt-get update
apt-get install vim

# Alias vi to vim for easy usage
alias vi="vim"

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Let's mess with our vimrc now
touch ~/.vimrc
cat vimrc >> ~/.vimrc
