"<cr>NERDTree Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
"Vundle的配置
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

"侦测文件类型
filetype off
set rtp+=~/.vim/bundle/vundle/ "载入特定目录插件
"set rtp+=$HOME/.vim/bundle/vundle/ "Windows下
call vundle#rc()
"plugin 
"vimscripts账号下的项目直接填写名称即可

"其它需填写用户/资源名称
Bundle 'gmarik/vundle'

"非github上资源
"Bundle 'git://git.wincent.com/command-t.git'
"indent
"Bundle 'php.vim-html-enhanced'
"color
"Bundle 'Lucius'

"和编辑文件一样，通过h j k l移动光标定位
"o 打开关闭文件或者目录，如果是文件的话，就会在图1.1的右侧打开该文件，启动鼠标后，鼠标点击效果相同
"go 效果同上，不过光标保持在文件目录里，类似预览文件内容的功能
"i和s可以水平分割或纵向分割窗口打开文件，前面加g类似go的功能
"t 在标签页中打开，并跳转到打开的标签页
"T 在标签页中打开，光标依然停留在当前页面中
"K 到同目录第一个节点
"J 到同目录最后一个节点
"C 切换目录，进入当前所在的目录，不会改变bash所在的目录
"m 显示文件系统菜单（添加、删除、移动操作）
"? 帮助，有一点不好的就是，帮助显示的位置
"q 关闭

"注释插件
Bundle 'https://github.com/scrooloose/nerdcommenter.git'
let g:NERDSpaceDelims = 1 " 让注释符与语句之间留一个空格
let NERDCompactSexyComs=1       " 多行注释时样子更好看
let g:NERDDefaultAlign = 'right'
let g:NERDCustomDelimiters = {
    \ 'javascript': { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/' },
    \ 'less': { 'left': '/*', 'right': '*/' }
    \ }
",ca，在可选的注释方式之间切换，比如C/C++ 的块注释/* */和行注释//
",cc，注释当前行
",c，切换注释/非注释状态
",cs，以”性感”的方式注释
",cA，在当前行尾添加注释符，并进入Insert模式
",cu，取消注释  

Bundle 'airblade/vim-gitgutter'
set updatetime=250
let g:gitgutter_sign_column_always = 1
Bundle 'tpope/vim-fugitive'
" git.  git操作还是习惯命令行,vim里面处理简单diff编辑操作  命令:
" " :Gblame
" " :Gstatus
" " :Gdiff 
" " :Glog
" " :Gcommit
" " :Git push

Bundle 'tpope/vim-rails.git'

" .editorcontig 配置文件解析
Bundle 'https://github.com/editorconfig/editorconfig-vim.git'

" vue 插件
Bundle 'https://github.com/posva/vim-vue.git'

" vim-jsx - 提供 JSX 的语法高亮和缩进
Bundle 'https://github.com/mxw/vim-jsx.git'
let g:jsx_ext_required = 1

" 树形目录
" NERDTree
" o 打开关闭文件或目录
" e 以文件管理的方式打开选中的目录
" t 在标签页中打开
" T 在标签页中打开，但光标仍然留在 NERDTree
" r 刷新光标所在的目录
" R 刷新当前根路径
" X 收起所有目录
" p 小写，跳转到光标所在的上一级路径
" P 大写，跳转到当前根路径
" J 到第一个节点
" K 到最后一个节点
" I 显示隐藏文件
" m 显示文件操作菜单
" C 将根路径设置为光标所在的目录
" u 设置上级目录为根路径
" ctrl + w + w 光标自动在左右侧窗口切换
" ctrl + w + r 移动当前窗口的布局位置
" :tabc 关闭当前的 tab
" :tabo   关闭所有其他的 tab
" :tabp   前一个 tab
" :tabn   后一个 tab
" gT      前一个 tab
" gt      后一个 tab

Bundle 'scrooloose/nerdtree'

"启动关闭NERD_TREE的快捷键"
silent! nmap <C-m> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

" git
Bundle 'https://github.com/jistr/vim-nerdtree-tabs.git'
Bundle 'https://github.com/Xuyuanp/nerdtree-git-plugin.git'
let g:NERDTreeShowIgnoredStatus = 1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }


" 主题
Bundle 'https://github.com/altercation/vim-colors-solarized.git'
Bundle 'https://github.com/Anthony25/gnome-terminal-colors-solarized.git'

" 加强版状态栏
Bundle               'https://github.com/vim-airline/vim-airline.git'
Bundle               'https://github.com/vim-airline/vim-airline-themes.git'
let g:airline_theme= 'papercolor'

" 设置颜色主题
set background=dark
colorscheme solarized

Bundle 'https://github.com/mattn/emmet-vim.git'

" 查找
Bundle                          'kien/ctrlp.vim'
" Bundle                        'mileszs/ack.vim'
Bundle                          'https://github.com/rking/ag.vim.git'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip     
let g:ctrlp_custom_ignore = {'dir':  '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$'}

" Bundle 'msanders/snipmate.vim'
Bundle   'Shougo/neocomplcache.vim'
"自动补全
Bundle                              'Townk/vim-autoclose'
Bundle                              'Lokaltog/vim-easymotion'
Bundle                              'terryma/vim-multiple-cursors'
Bundle                              'jade.vim'
Bundle                              'tomtom/tlib_vim'
Bundle                              'MarcWeber/vim-addon-mw-utils'
Bundle                              'SirVer/ultisnips'
let g:UltiSnipsSnippetDirectories  = ['MySnippets', 'UltiSnips']
let g:UltiSnipsSnippetsDir         = '~/.vim/bundle/vim-snippets/UltiSnips'
let g:UltiSnipsExpandTrigger       = '<Tab>'
let g:UltiSnipsJumpForwardTrigger  = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"
" Bundle                            'honza/vim-snippets'
Bundle                              'https://github.com/honza/vim-snippets.git'
Bundle                              'vim-indent-guides'

"indentLine 代码缩进线标志线
Bundle 'https://github.com/Yggdroot/indentLine.git' 
let g:indentLine_char = '┊'
"映射到ctrl+h键 
map <C-h> :IndentLinesToggle<CR> 

"注释插件
Bundle 'DoxygenToolkit.vim' 
"doxygen toolkit 
let g:DoxygenToolkit_briefTag_pre="@desc "
let g:DoxygenToolkit_paramTag_pre="@param "
let g:DoxygenToolkit_returnTag="@returns   "
" let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
" let g:DoxygenToolkit_blockFooter="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockHeader=""
let g:DoxygenToolkit_blockFooter=""
let g:DoxygenToolkit_licenseTag="GPL 2.0"

let g:DoxygenToolkit_authorName="leng_bw@163.com"
let s:licenseTag = "Copyright(C)\<enter>"
let s:licenseTag = s:licenseTag . "For free\<enter>"
let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1

"coffeescript
Bundle 'kchmck/vim-coffee-script'

"css、less颜色显示
Bundle 'https://github.com/lilydjwg/colorizer.git'
"python开发
Bundle 'python.vim'
"json高亮显示 
Bundle 'json.vim'
Bundle 'surround.vim'
" 代码格式化插件
Bundle 'godlygeek/tabular'
" vim-markdown插件
Bundle 'plasticboy/vim-markdown'

" 行号
Bundle "myusuf3/numbers.vim"
let g:numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree']

" typescript
Bundle "https://github.com/leafgarland/typescript-vim.git"
Plugin 'https://github.com/ternjs/tern_for_vim.git'

"查看和自动识别文件编码格式
"Bundle 'FencView.vim' 
"js校验
"Bundle 'hallettj/jslint.vim'

"Plugin
" Bundle 'cecutil'
" Bundle 'fcitx.vim'
Bundle   'L9'
"文件查找工具 
" Bundle 'FuzzyFinder'
" Bundle 'jsbeautify'
"创建目录
Bundle   'auto_mkdir'
" Bundle 'AuthorInfo'
" Bundle 'Mark'
" Bundle 'matrix.vim'
" Bundle 'mru.vim'


"Bundle 'project.vim'
"Bundle 'restart.vim'
"Bundle 'taglist.vim'

"Bundle 'templates.vim'
"let g:template_autoload = 5

"Bundle 'c.vim'
"Bundle 'vimim.vim'

"Vundle命令：
":BundleList          #已安装列表
":BundleInstall(!)    #安装、升级
":BundleSearch(!)     #搜索
":BundleClean(!)      #删除

"自己的配置
" 不用浅色高亮当前行
autocmd InsertLeave * se nocul

"用浅色高亮当前行
" autocmd InsertEnter * se cul

"智能对齐
set smartindent

"在处理未保存或只读文件的时候，弹出确认
set confirm

" Tab键的宽度
set tabstop=4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4

" 用空格代替制表符
set expandtab

" 历史纪录数
set history=30

"搜索逐字符高亮
set hlsearch
set incsearch

" 设置魔术
set magic

"行内替换
set gdefault

"不生成swp文件
set noswapfile

" 编码设置
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1
set bomb 

"载入文件类型插件
filetype on
filetype plugin on
filetype indent on
set viminfo+=!

"设置字体
"set guifont=Menlo:h16:cANSI

"语言设置
set langmenu=zn_CN.UTF-8
set helplang=cn

"命令行（在状态行）的高度，默认为1,这里是2
set cmdheight=2

"在编辑过程中，在右下角显示光标位置的状态行
set ruler

"总是显示状态行
set laststatus=2

"在状态行显示目前所执行的命令，未完成的指令片段亦会显示出来
set showcmd

"光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

"对应括号高亮的时间（单位是十分之一秒）
set matchtime=5

"在切换buffer时自动保存当前文件
set autowrite

"增强模式中的命令行自动完成操作
set wildmenu

"字符间插入的像素行数目
set linespace=2

"新建文件编码
set fenc=utf-8
set autoindent
set hidden

"关闭错误信铃响
set noeb

"禁止生成临时文件
set nobackup

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-    

" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\      

" 高亮显示匹配的括号
set showmatch

"自动载入配置文件不需要重启
autocmd! bufwritepost _vimrc source %
"将-连接符也设置为单词
set isk+=-

" 设置当文件被改动时自动载入  
" set autoread

" 选中状态下 Ctrl+c 复制
"vmap <C-c> "+y
"共享粘贴板

"设置光标高亮显示
"设置光标行
"set cursorline

"设置光标列
"set cursorcolumn
"set ttyfast
"set ruler
"set backspace=indent,eol,start

""插入模式下移动
"inoremap <c-j> <down>
"inoremap <c-k> <up>
"inoremap <c-l> <right>
"inoremap <c-h> <left>

"map <Leader>l <Plug>(easymotion-lineforward)
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)
"map <Leader>h <Plug>(easymotion-linebackward)

"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

""`s<CR>` repeat last find motion.
"nmap s <Plug>(easymotion-s)
"" Bidirectional & within line 't' motion
"omap t <Plug>(easymotion-bd-tl)
"" Use uppercase target labels and type as a lower case
"let g:EasyMotion_use_upper = 1
"" type `l` and match `l`&`L`
"let g:EasyMotion_smartcase = 1
"" Smartsign (type `3` and match `3`&`#`)
"let g:EasyMotion_use_smartsign_us = 1

" {{{ plugin - jsbeautify.vim 优化js代码，并不是简单的缩进，而是整个优化
" 开始优化整个文件
" \js快捷键
" nmap <silent> <leader>js :call g:Jsbeautify()<cr>
" }}}

"let g:user_zen_expandabbr_key = '<c-return>'   "设置为ctlr+回车 扩展 
"let g:use_zen_complete_tag = 1  

"leader键的功能设置
"修改leader键为逗号
let mapleader=","

" set whichwrap=b,s,<,>,[,]
" 开启Normal或Visual模式下Backspace键，空格键，左方向键，右方向键，Insert或replace模式下左方向键，右方向键跳行的功能。

"split出来两个窗口切换有快捷键ctrl+w+h,ctrl+w+j,ctrl+w+k或者trl+w+l，h-j-k-l四个字母分别代表左、下、上、右，也可以用方向键代替，比如ctrl+w+右箭头。

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif
