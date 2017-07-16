source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

"   set diffexpr=MyDiff()
"   function MyDiff()
"     let opt = '-a --binary '
"     if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"     if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"     let arg1 = v:fname_in
"     if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"     let arg2 = v:fname_new
"     if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"     let arg3 = v:fname_out
"     if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"     if $VIMRUNTIME =~ ' '
"       if &sh =~ '\<cmd'
"         if empty(&shellxquote)
"           let l:shxq_sav = ''
"           set shellxquote&
"         endif
"         let cmd = '"' . $VIMRUNTIME . '\diff"'
"       else
"         let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"       endif
"     else
"       let cmd = $VIMRUNTIME . '\diff'
"     endif
"     silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
"     if exists('l:shxq_sav')
"       let &shellxquote=l:shxq_sav
"     endif
"   endfunction

"高亮搜索
set hlsearch
"搜索输入文字时实时匹配
set incsearch

"不产生备份文件
set nobackup
"不产生撤销文件
set noundofile
"不产生swp临时文件
set noswapfile

"设置vim内部编码
set encoding=utf8
"设置写入文件时编码
set fileencoding=utf8
"设置vim终端显示编码
set termencoding=utf8
"检测文件编码顺序
set fileencodings=ucs-bom,utf-8,cp936,gb2312,gb18030,big5,euc-jp,euc-kr,latinl

"判定当前操作系统类型
if(has("win32") || has("win95") || has("win64") || has("win16"))
    let g:iswindows=1
else
    let g:iswindows=0
endif

"设置编码后重新加载菜单，否则菜单乱码
if(g:iswindows==1)
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    "提示信息乱码
    language messages zh_CN.utf-8
endif


"默认以双字节处理那些特殊字符
if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
    set ambiwidth=double
endif

"没有bom
set nobomb

"设置softtab
set softtabstop=4
"tab设置为4个空格
set tabstop=4
"自动缩进为4个空格
set shiftwidth=4
"tab替换为空格
set expandtab

"显示行号
set number

"搜索不区分大小写
set ic

if has("gui_running")
    au GUIEnter * simalt ~x " 窗口启动时自动最大化
    set guioptions-=m " 隐藏菜单栏
    set guioptions-=T " 隐藏工具栏
    "set guioptions-=L " 隐藏左侧滚动条
    "set guioptions-=r " 隐藏右侧滚动条
    "set guioptions-=b " 隐藏底部滚动条
    "set showtabline=0 " 隐藏Tab栏
endif


"设置配色方案
"必须有这一行
"set t_Co=256
"否则单这一行出错
"colorscheme solarized

syntax enable

"set background=dark

"let g:solarized_termcolors=256

colorscheme murphy

"设置字体
set guifont="DejaVu Sans Mono":h10

"bundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.


"-------------
" plugin on GitHub repo

"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'

"Plugin 'suan/vim-instant-markdown'

Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'

"-------------
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

"-------------
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'


"-------------
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

"-------------
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line


call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"禁用折叠
"let g:vim_markdown_folding_disabled = 1

"自动开始Markdown文件
"let g:instant_markdown_autostart = 1

let g:mkdp_path_to_chrome = "C:\Users\ssl\AppData\Roaming\360se6\Application\360se.exe"
