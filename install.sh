#!/bin/bash
echo 'backup your vim config files: .vim, .vimrc, .gvimrc'
tar czvf vim.tar.gz .gvimrc .vim .vimrc > /dev/null 2> /dev/null

[ -e 'vim.tar.gz' ] || ( echo 'STOP: backup failed' && exit 1 )

cp .vimrc .gvimrc ~/
mkdir -p ~/.vim
cp -a assets/* ~/.vim/

