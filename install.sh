#!/bin/bash
echo 'backup your vim config files: .vim, .vimrc, .gvimrc'
tar czvf vim.tar.gz .gvimrc .vim .vimrc > /dev/null 2> /dev/null

[ -e 'vim.tar.gz' ] || ( echo 'STOP: backup failed' && exit 1 )

git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cp .vimrc .gvimrc ~/
cp -a assets/* ~/.vim
vim +BundleInstall +qa

# snipmate-snippets
git submodule init; git submodule update
cd snipmate-snippets/; rake deploy_local; cd -

