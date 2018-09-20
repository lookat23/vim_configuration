" 关闭兼容模式 装插件需要
set nocompatible        

" 插件
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'vim-scripts/OmniCppComplete'
Plugin 'vim-syntastic/syntastic'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()
filetype plugin indent on

" history文件中需要记录的行数 
set history=1000
" 在状态行上显示光标所在位置的行号和列号 
set ruler
" 显示行号
set number
" 在状态显示没输入完的命令
set showcmd
" 状态列显示目前的模式
set showmode
" 状态行显示在窗口底部倒数第二行
set laststatus=2
" 命令行（在状态行下）的高度
set cmdheight=2
" 光标移动到buffer的顶部和底部时保持行的距离
set scrolloff=3

" 在被分割的窗口间显示空白，便于阅读
set fillchars=stl:\ ,stlnc:\ ,vert:\ 

" 不让vim发出讨厌的滴滴声
set noerrorbells
" 不要闪烁
set novisualbell
" 当vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响声
set t_vb=

" 设置背景颜色
set background=dark
" 语法高亮
syntax on
" 颜色主题
colorscheme desert

" 高亮当前行
set cursorline
hi CursorLine term=NONE cterm=NONE ctermbg=0 guibg=Gray40

" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2

" 允许backspace和光标键跨越行边界
"set whichwrap+=<,>,h,l

" 编辑时可以将tab替换为空格
set expandtab
" 在行和段开始处使用制表符
set smarttab
" 制表符为4统一缩进为4
set shiftwidth=4
set tabstop=4
" 继承前一行的缩进方式
set autoindent
" 使用C样式的缩进
set cindent

" 不要备份文件
set nobackup
" 不要生成swap文件
set noswapfile
" 文件在Vim之外修改过，自动重新读入
"set autoread
" 自动保存
"set autowrite
" 自动切换当前目录为当前文件所在的目录
set autochdir
" 使用utf-8或cp936(gbk)打开文件
set fileencodings=utf-8,cp936
" 按顺序依次尝试unix-dos-mac方式打开文件
set fileformats=unix,dos,mac

" 当输入一个左括号时自动匹配右括号
set showmatch
" 匹配括号高亮的时间
set matchtime=2
" 高亮被搜索的句子
set hlsearch
" 在搜索时，输入的词句的逐字符高亮
set incsearch
" 在搜索的时候忽略大小写
set ignorecase
" 如果搜索模式包含大写字符，不使用 'ignorecase' 选项
set smartcase
" 使用magic,和正则有关
set magic

"在执行宏命令时，不进行显示重绘；在宏命令执行完成后，一次性重绘，以便提高性能。
set lazyredraw
" 关闭扫描到文件两端时重新搜索
set nowrapscan
" 识别什么只关键字，和移动有关
set iskeyword+=_,$,@,%,#,-,.

" gvim的样式设置
if has("gui_running")
    colorscheme solarized
    set guifont=DejaVu\ Sans\ Mono\ 12
    set guioptions=aegicmT
endif

" 插件快捷键
map <F2> :NERDTreeToggle<CR>
map <F3> :TagbarToggle<CR>
map <F4> :CtrlPMixed<CR>
