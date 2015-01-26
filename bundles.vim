set nocompatible                " be iMproved
filetype off                    " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" 让Vundle管理插件，必须
Bundle 'gmarik/vundle'

"自己的插件
"

" Github vim-scripts 用户下的repos,只需要写repos名称
" 目录结构
Bundle 'The-NERD-tree'


" 在Github其他用户下的repos,写出"用户名/repo名"
" 语法检查
Bundle 'scrooloose/syntastic'
" 去行尾空格
Bundle 'bronson/vim-trailing-whitespace'
" 引号/括号自动补全
Bundle 'Raimondi/delimitMate'
" 状态栏增强
Bundle 'bling/vim-airline'
" 主题
Bundle 'altercation/vim-colors-solarized'
" tagbar
Bundle 'majutsushi/tagbar'


" 不在Github上的插件，需要写出git全路径,例如：
" Bundle 'git://git.xxxx.com/others.git'

filetype plugin indent on     " required!
