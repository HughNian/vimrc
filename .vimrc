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
"指标符宽度
set tabstop=4 
set shiftwidth=4
set expandtab
set smarttab

set nobackup
set nowritebackup
set foldmethod=syntax
set foldlevel=99

"根据文件格式载入插件和缩进
filetype plugin indent on 
set autoindent

autocmd FileType make       set noexpandtab
autocmd FileType python     set noexpandtab
autocmd FileType eruby      set tabstop=2 shiftwidth=2
autocmd FileType ruby,rdoc  set tabstop=2 shiftwidth=2
autocmd FileType html       set tabstop=2 shiftwidth=2
autocmd FileType javascript set tabstop=2 shiftwidth=2
autocmd FileType coffee     set tabstop=2 shiftwidth=2
autocmd FileType erlang     set tabstop=2 shiftwidth=2
autocmd FileType md         set tabstop=2 shiftwidth=2
au! BufRead,BufNewFile *.json setfiletype json 

" CTRL-n 映射为 快速打开 
" map <C-n> :CommandT<CR>
let g:ctrlp_map = '<c-n>'
let g:ctrlp_cmd = 'CtrlPMRU'

" F4 映射为关闭当前tab
map <silent> <F4> :tabclose<CR>

" 快捷键，alt+方向键切换buffer
nmap <c-k> <c-w>k
nmap <c-j> <c-w>j
nmap <c-l> <c-w>l
nmap <c-h> <c-w>h

" buffer窗口调整
map <C-w><C-k> :resize+1<CR>
map <C-w><C-j> :resize-1<CR>
map <C-w><C-h> :vertical resize+1<CR>
map <C-w><C-l> :vertical resize-1<CR>

map <C-w><C-m> :vertical resize+100<CR>:resize+70<CR>

" F3用于搜索
set grepprg=grep
function MyGrepOnDir()
	let str = input('查询内容:')
	let suffix = input('文件类型:')
	exe 'gr! --include=*.{'.suffix.'} -nR "'.str.'" .'
	exe 'cw'
endfunction
nnoremap <silent> <F3> :call MyGrepOnDir()<CR>

" F2用于粘帖
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" 使用 Ctrl+S 保存文件
map <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>i

" 使用 F7 启动NERDTree插件  
" NERDTree plugin
" let NERDTreeWinPos = "right" "where NERD tree window is placed on the screen
" let NERDTreeWinSize = 31 "size of the NERD tree
nmap <F7> <ESC>:NERDTreeToggle<RETURN>

" Taglist 设置
let Tlist_Use_Right_Window = 1
let Tlist_Show_One_File = 1
let Tlist_Use_SingleClick = 1
map <silent> <F8> :TlistToggle<cr>

" 对付超长文本
map j gj
map k gk
" 存入系统剪切板
set clipboard+=unnamed
set clipboard+=unnamedplus

" ctags 设置
set tags=./tags,tags
set tags+=/home/john/.rvm/src/ruby-1.9.3-p194/tags"
set tags+=/home/john/.rvm/gems/ruby-1.9.3-p194/gems/tags"

