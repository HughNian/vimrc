" git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" BundleInstall

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:

Bundle 'Align'
Bundle 'tpope/vim-rails'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/nerdtree'
" Bundle 'kchmck/vim-coffee-script'
" Bundle 'hallison/vim-markdown'

" 设定文件浏览器目录为当前目录  
set bsdir=buffer  
" 设置编码  
set enc=utf-8  
" 设置文件编码  
set fenc=utf-8  
" 设置文件编码检测类型及支持格式  
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936  
" 设置开启语法高亮  
syntax on  
"显示行号  
" set number  
" 查找结果高亮度显示  
set hlsearch  
" tab宽度  
set tabstop=4  
set cindent shiftwidth=4  
" set autoindent shiftwidth=4  
" filetype plugin indent on  

set nobackup
set nowritebackup

" F3用于搜索
set grepprg=grep
function MyGrepOnDir()
	let str = input('查询内容:')
	let suffix = input('文件类型:')
	exe 'gr! --include=*.{'.suffix.'} -nR '.str.' .'
	exe 'cw'
endfunction
nnoremap <silent> <F3> :call MyGrepOnDir()<CR>

"根据文件格式载入插件和缩进
filetype plugin indent on 
set autoindent

"打开鼠标功能
set mouse=a 

"指标符宽度
set tabstop=4 
set shiftwidth=4
set expandtab
set smarttab

autocmd FileType make     set noexpandtab
autocmd FileType python   set noexpandtab
autocmd FileType eruby  set tabstop=2 shiftwidth=2
autocmd FileType ruby,rdoc set tabstop=2 shiftwidth=2
autocmd FileType html set tabstop=2 shiftwidth=2
autocmd FileType javascript set tabstop=2 shiftwidth=2
autocmd FileType coffee set tabstop=2 shiftwidth=2
au! BufRead,BufNewFile *.json setfiletype json 

" 快捷键，alt+方向键切换buffer
nmap <M-Up> <c-w>k
nmap <M-Down> <c-w>j
nmap <M-Right> <c-w>l
nmap <M-Left> <c-w>h

" 把 F7 映射到 启动NERDTree插件  
" NERDTree plugin
" let NERDTreeWinPos = "right" "where NERD tree window is placed on the screen
" let NERDTreeWinSize = 31 "size of the NERD tree
nmap <F7> <ESC>:NERDTreeToggle<RETURN>
" map <F8> :NERDTree<CR>

" 把 CTRL-n 映射为 快速打开 
map <C-n> :CommandT<CR>

