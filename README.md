# kaito-vim
自己使用的python-vim配置文件

## 插件
- `gmarik/vundle` 插件管理器
- `The-NERD-tree` 树形目录结构
- `scrooloose/syntastic` 语法检测
- `bronson/vim-trailing-whitespace` 去行尾空格
- `Raimondi/delimitMate` 引号/括号自动补全
- `bling/vim-airline` 状态栏增强
- `majutsushi/tagbar` 显示代码结构,快速跳转
- `altercation/vim-colors-solarized` 主题
- `kien/ctrlp`模糊检索文件
- `tacahiroy/ctrlp-funky`模糊检索方法
- `jl/gundo.vim`历史操作记录
- `ag.vim`全局文本搜索
- `kshenoy/vim-signature`快速标记跳转(打标签)
- `scrooloose/nerdcommenter`快速注释
- `docunext/closetag.vim`自动补全html标签
- `thinca/vim-quickrun`执行当前文件
- `Valloric/YouCompleteMe`智能提示


## 依赖
### YouCompleteMe依赖
    升级vim版本7.4.258+或安装macvim
    安装cmake

### ag全局文本搜索
    brew install the_silver_searcher

### python语法检测
	sudo pip install pyflakes
	sudo pip install pylint
	sudo pip install pep8

## 快捷键配置，具体参考`_vimrc`
- `leader` 配置为`,`
- `<leader>e`树形目录结构
- `<leader>空格` 去除行尾空格
- `<leader>1-9` 快速切换1-9tab
- `<leader>t` 打开文件结构
- `Ag` text 全局文本搜索
- `Ctrl+P` 模糊检索文件, `<leader>f` 定位最近打开的文件
- `<leader>fu` 模糊检索当前文件下的方法
- `<leader>s` 打开语法检测错误列表, `<leader>sn/sp` 跳转下一个/上一个错误处
- `<leader>r` 或 `F10` 执行当前文件
- `<leader>h` 历史记录
- `Ctrl+v`选中<leader>c+空格 快速注释/放开注释

## 安装
	git clone https://github.com/silverbullet-kaito/kaito-vim.git ~/.vim

	cd ~/.vim

	git submodule init
	git submodule update

	mv ~/.vimrc ~/.vimrc.old
	cp ~/.vim/_vimrc ~/.vimrc

    # 安装插件,安装YouCompleteMe会比较久
	vim +BundleInstall

    # 编译安装YouCompleteMe
    cd ~/.vim/bundle/YouCompleteMe
    ./install.py --clang-completer
