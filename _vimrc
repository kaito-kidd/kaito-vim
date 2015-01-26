syntax on                   "语法高亮

" 加载插件
so ~/.vim/bundles.vim

set fileencodings=utf-8,gbk
set backspace=indent,eol,start
set tabstop=4               "tab为4个空格
set number                  "显示行号
set hlsearch                "开启搜索高亮
set incsearch               "输入搜索字符串的同时进行搜索
"set ignorecase              "搜索时忽略大小写
set ruler                   "开启光标位置提示
set cmdheight=1             "命令部分高度为1
"set autoindent              "自动缩进
set showmatch               "显示匹配的括号
"set smartindent             "智能缩进
set smarttab
set expandtab
set shiftwidth=4            " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4           " 使得按退格键时可以一次删掉 4 个空格
set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)


" Set leader
let mapleader = ","
let g:mapleader = ","


" NERDTree切换
nnoremap <leader>e :NERDTreeToggle<cr>

" 快速语法检测
map <F7> :SyntasticCheck<cr>

" 去行尾空格
map <leader>s :FixWhitespace<cr>


" 新建tab  Ctrl+t
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>
nnoremap <C-l>     :tabnew 
" normal模式下切换到确切的tab
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
