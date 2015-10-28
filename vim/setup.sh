# Get a clean vim install
sudo apt-get remove vim-tiny
apt-get update
apt-get install vim

# Alias vi to vim for easy usage
alias vi="vim"

# Let's mess with our vimrc now
touch ~/.vimrc
cat vimrc >> ~/.vimrc
