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

## python语法检测依赖
	sudo pip install pyflakes
	sudo pip install pylint
	sudo pip install pep8

## 快捷键配置，具体参考`_vimrc`
- `leader` 配置为`,`
- `<leader>e`树形目录结构
- `<leader>s` 去除行尾空格
- `<leader>1-9` 快速切换1-9tab
- `<leader>f` 打开tagbar
- `<F7>` 快速语法检测

## 安装
	git clone https://github.com/silverbullet-kaito/kaito-vim.git ~/.vim

	cd ~/.vim

	git submodule init
	git submodule update

	mv ~/.vimrc ~/.vimrc.old
	cp ~/.vim/_vimrc ~/.vimrc

	vim +BundleInstall
