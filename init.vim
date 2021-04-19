syntax on                 " 打开语法高亮
set nocompatible          " 关闭兼容模式
set number                " 行号
set cursorline            " 光标所在的当前行高亮
set wrap                  " 自动折行，即太长的行分成几行显示
set showcmd               " 命令模式下，在底部显示，当前键入的指令
set wildmenu              " 命令模式下，底部操作指令按下 Tab 键自动补全
set hlsearch              " 搜索时，高亮显示匹配结果
set incsearch             " 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set showmatch             " 显示括号匹配
set tabstop=4             " 设置Tab长度4空格
set shiftwidth=4          " 设置自动缩进长度为4空格
set autoindent            " 继承前一行的缩进方式，适用于多行注释
filetype plugin indent on " 启用自动补全

" **********************
" 第一次使用，自动加载
" **********************



" **********************
" 插件列表开始
" **********************
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'          " 用来提供一个导航目录的侧边栏
Plug 'junegunn/vim-easy-align'      " 可以快速对齐的插件
Plug 'jistr/vim-nerdtree-tabs'      " 可以使 nerdtree 的 tab 更加友好些
Plug 'Xuyuanp/nerdtree-git-plugin'  " 可以在导航目录中看到 git 版本信息
Plug 'airblade/vim-gitgutter'       " 可以在文档中显示 git 信息
Plug 'vim-airline/vim-airline'      " Vim状态栏插件，包括显示行号，列号，文件类型，文件名，以及Git状态
Plug 'majutsushi/tagbar'
Plug 'morhetz/gruvbox'

Plug 'fatih/vim-go', { 'tag': '*' } " go 主要插件
Plug 'dgryski/vim-godef'            " go 中的代码追踪，输入 gd 就可以自动跳转
Plug 'neoclide/coc.nvim', {'branch': 'release'}		" coc
Plug 'gcmt/wildfire.vim'          " 选择代码块
Plug 'tpope/vim-surround'         " 


call plug#end()
" **********************
" 插件列表结束
" **********************

