#!/usr/bin/bash

dir=$(pwd)
for file in $pwd*rc
do
	if [[ -f $file ]]; then
		ln -s $dir/$file ~/.$file
	fi
done

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# And install vim plugins
vim +PluginInstall +qall

