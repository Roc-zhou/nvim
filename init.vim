"  .----------------.  .----------------.  .----------------.  .----------------.  .----------------.
" | .--------------. || .--------------. || .--------------. || .--------------. || .--------------. |
" | | ____    ____ | || |  ____  ____  | || | ____   ____  | || |     _____    | || | ____    ____ | |
" | ||_   \  /   _|| || | |_  _||_  _| | || ||_  _| |_  _| | || |    |_   _|   | || ||_   \  /   _|| |
" | |  |   \/   |  | || |   \ \  / /   | || |  \ \   / /   | || |      | |     | || |  |   \/   |  | |
" | |  | |\  /| |  | || |    \ \/ /    | || |   \ \ / /    | || |      | |     | || |  | |\  /| |  | |
" | | _| |_\/_| |_ | || |    _|  |_    | || |    \ ' /     | || |     _| |_    | || | _| |_\/_| |_ | |
" | ||_____||_____|| || |   |______|   | || |     \_/      | || |    |_____|   | || ||_____||_____|| |
" | |              | || |              | || |              | || |              | || |              | |
" | '--------------' || '--------------' || '--------------' || '--------------' || '--------------' |
"  '----------------'  '----------------'  '----------------'  '----------------'  '----------------'
"
" Author: Roc-zhou
" System: Mac os

syntax on                                                 " 打开语法高亮
set number                                                " 行号
set relativenumber
set encoding=utf-8
set history=500
set iskeyword+=_,$,@,%,#,-                                " 带有如下符号的单词不要被换行分割
set list
set showcmd
"set listchars=tab:\|\ ,trail:▫
set clipboard=unnamed                                     " 复制共享
set visualbell                                            " 出错时，发出视觉提示，通常是屏幕闪烁。
set cursorline                                            " 光标所在的当前行高亮
set wrap                                                  " 自动折行，即太长的行分成几行显示
set showcmd                                               " 命令模式下，在底部显示，当前键入的指令
set wildmenu                                              " 命令模式下，底部操作指令按下 Tab 键自动补全
set ignorecase                                            " 忽略大小写
set hlsearch                                              " 搜索时，高亮显示匹配结果
set incsearch                                             " 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set showmatch                                             " 显示括号匹配
set tabstop=4                                             " 设置Tab长度2空格
set shiftwidth=4                                          " 设置自动缩进长度为2空格
set expandtab                                             " TAB替换为空格
set autoindent                                            " 设置自动缩进
set autoread " 文件被修改的时候自动重新读取
set scrolloff=10
set ttyfast
set lazyredraw
set completeopt=longest,noinsert,menuone,noselect,preview " 文件类型自动检测
filetype plugin indent on                                 " 启用自动补全
filetype plugin on
autocmd BufReadPost * normal! g`"
exec "nohlsearch"

" 折叠
" zf 创建折叠（可视模式下）
" za 打开关闭之间切换
" zc 关闭当前打开的折叠
" zo 打开当前的折叠
" zm 关闭所有折叠
" zM 关闭所有折叠及其嵌套的折叠
" zr 打开所有折叠
" zR 打开所有折叠及其嵌套的折叠
" zd 删除当前折叠
" zD 删除嵌套
" zE 删除所有折叠
" zj 移动至下一个折叠
" zk 移动至上一个折叠
" zn 禁用折叠
" zN 启用折叠
set nofoldenable
set foldmethod=manual
augroup remember_folds
    autocmd!
    au BufWinLeave ?* mkview 1
    au BufWinEnter ?* silent! loadview 1
augroup END


" **********************
" 第一次使用，自动加载
" **********************
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" **********************
" 插件列表开始 vim-plug
" **********************
call plug#begin('~/.config/nvim/plugged')

Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'                      " 用来提供一个导航目录的侧边栏
" mac安装 brew install ctags
Plug 'preservim/tagbar'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'              " 显示 NERDTree 中文件和文件夹的 Git 状态标志
Plug 'junegunn/vim-easy-align'                  " 可以快速对齐的插件
Plug 'vim-airline/vim-airline'                  " Vim状态栏插件，包括显示行号，列号，文件类型，文件名，以及Git状态
Plug 'airblade/vim-gitgutter'                   " 可以在文档中显示 git 信息
" Plug 'gcmt/wildfire.vim'                        " 选择代码块
Plug 'neoclide/coc.nvim', {'branch': 'release'} " coc
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'mhinz/vim-startify'
Plug 'fatih/vim-go', { 'tag': '*' }             " go 主要插件
Plug 'preservim/nerdcommenter'                  " 注释插件

" Plug 'file://'

call plug#end()

" **********************
" 插件列表结束
" **********************

