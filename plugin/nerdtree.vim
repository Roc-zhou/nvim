map tt :NERDTreeMirror<CR>
map tt :NERDTreeToggle<CR>

let NERDTreeShowLineNumbers=0                 " 显示行号
let NERDTreeAutoCenter=1                      " 打开文件时是否显示目录
let NERDTreeShowHidden=1                      " 是否显示隐藏文件
let NERDTreeIgnore=['\.pyc','\~$','\.swp']    " 忽略一下文件的显示
let NERDTreeShowBookmarks=2                   " 打开 vim 文件及显示书签列表
let g:nerdtree_tabs_open_on_console_startup=0 " 在终端启动vim时，共享NERDTree
