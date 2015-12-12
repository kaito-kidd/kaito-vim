syntax on                   "语法高亮

" 加载插件
so ~/.vim/bundles.vim

" Set leader
let mapleader = ","
let g:mapleader = ","

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
set expandtab               " tab转空格"
set shiftwidth=4            " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4           " 使得按退格键时可以一次删掉 4 个空格
set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)
set showmode
set autoread                " 文件修改之后自动载入
" set cursorcolumn            " 突出显示当前列
set cursorline              " 突出显示当前行
set scrolloff=10            " 在上下移动光标时，光标的上方或下方至少会保留显示的行数


" 相对行号      行号变成相对，可以用 nj  nk   进行跳转 5j   5k 上下跳5行
set relativenumber number
au FocusLost * :set norelativenumber number
au FocusGained * :set relativenumber
" 插入模式下用绝对行号, 普通模式下用相对
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber number
  else
    set relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>


" 设置新文件的编码为 UTF-8
set encoding=utf-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
"set langmenu=zh_CN.UTF-8
"set enc=2byte-gb18030
" 下面这句只影响普通模式 (非图形界面) 下的 Vim。
set termencoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" 如遇Unicode值大于255的文本，不必等到空格再折行。
set formatoptions+=m
" 合并两行中文时，不在中间加空格：
set formatoptions+=B

" 自动补全配置
"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu

" 增强模式中的命令行自动完成操作
set wildmenu
" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.class

" 复制选中区到系统剪切板中
vnoremap <leader>y "+y"


" for # indent, python文件中输入新行时#号注释不切回行首
autocmd BufNewFile,BufRead *.py inoremap # X<c-h>#

" tab 操作
" TODO: ctrl + n 变成切换tab的方法
" http://vim.wikia.com/wiki/Alternative_tab_navigation
" http://stackoverflow.com/questions/2005214/switching-to-a-particular-tab-in-vim
"map <C-2> 2gt
map <leader>th :tabfirst<cr>
map <leader>tl :tablast<cr>

map <leader>tj :tabnext<cr>
map <leader>tk :tabprev<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprev<cr>

map <leader>te :tabedit<cr>
map <leader>td :tabclose<cr>
map <leader>tm :tabm<cr>

" 新建tab  Ctrl+t
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>
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


" NERDTree配置,打开/关闭目录
nnoremap <leader>e :NERDTreeToggle<cr>


" 快速语法检测
map <F7> :SyntasticCheck<cr>


" FixWhitespace配置,去行尾空格
map <leader><space> :FixWhitespace<cr>


" delimitMate配置,括号符号自动补全
" for python docstring ", 特别有用
au FileType python let b:delimitMate_nesting_quotes = ['"']
" 关闭某些类型文件的自动补全
"au FileType mail let b:delimitMate_autoclose = 0


" airline配置,状态栏增强
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
" 是否打开tabline
" let g:airline#extensions#tabline#enabled = 1


" tagbar配置,打开tagbar
nnoremap <leader>t :TagbarToggle<cr>
" 启动时自动focus
let g:tagbar_autofocus = 1


" vim-colors-solarized配置,vim主题
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
" let g:solarized_termcolors=256
set background=dark
colorscheme solarized
syntax enable


" ag配置,使用Ag!搜索文本但不打开文件
nmap <c-a> :Ag! ""<left>. Ag!


" ctrlp配置,快速定位文件
" let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
" 模糊检索最近打开的文件
map <leader>f :CtrlPMRU<CR>
" 忽略文件夹和文件
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1


" ctrlp-funky配置,在文件中快速定位方法
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']


" syntastic配置,自动语法检测
let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='>'
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_enable_highlighting=1
" 使用哪个工具检测
let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_javascript_checkers = ['jsl', 'jshint']
let g:syntastic_html_checkers=['tidy', 'jshint']
" 修改高亮的背景色, 适应主题
highlight SyntasticErrorSign guifg=white guibg=black
" to see error location list
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height = 5
function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction
" 快捷键,s
nnoremap <Leader>s :call ToggleErrors()<cr>
" 跳到下一个/上一个错误语法的位置
nnoremap <Leader>sn :lnext<cr>
nnoremap <Leader>sp :lprevious<cr>


" nerdcommenter配置,快速注释
" 注释的时候自动加个空格
let g:NERDSpaceDelims=1


" closetag.vim配置
let g:closetag_html_style=1


" vim-quickrun配置,快速执行当前文件
let g:quickrun_config = {
\   "_" : {
\       "outputter" : "message",
\   },
\}

let g:quickrun_no_default_key_mappings = 1
" 快捷键
nmap <Leader>r <Plug>(quickrun)
map <F10> :QuickRun<CR>


" gundo.vim配置,时光机,找回写过的历史代码
nnoremap <leader>h :GundoToggle<CR>
