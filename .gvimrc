set guifont=Courier\ New\ Bold\ 12 
set guifontwide=WenQuanYi\ Zen\ Hei:h12:cGBK 

set vb t_vb= "关闭响铃和闪屏
set guioptions-=T "gui的工具栏
"set guioptions-=r "gui的右边的滑动条
"set guioptions-=L "gui的左边的滑动条

"把gvim的菜单和工具栏隐藏掉,按F2可调出,再按隐藏  
set guioptions-=m 
set guioptions-=T 
map <silent> <F2> :if &guioptions =~# 'm' <Bar>
         \set guioptions-=T <Bar>
         \set guioptions-=m <Bar>
     \else <Bar> 
         \set guioptions=T <Bar>
         \set guioptions=m <Bar>
     \endif<CR>  

" 启动gvim时窗口的大小  
set lines=35 columns=120

" set guifont=Monaco\ 11  
" set guifont=Courier\ New\ Bold\ 11
" set guifontwide=WenQuanYi\ Zen\ Hei:h12:cGBK  
" 设置编码  
set enc=utf-8
" 设置文件编码  
set fenc=utf-8
" 设置文件编码检测类型及支持格式
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
" 设置path
set path=,,

set cul

