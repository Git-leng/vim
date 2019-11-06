# vim

.vimrc配置文件记录
* [vim插件: easymotion[快速跳转]](http://www.wklken.me/posts/2015/06/07/vim-plugin-easymotion.html)
```
快捷键: 
<leader><leader>j和<leader><leader>k(即,,j和,,k)
<leader><leader>s(即,,s)
```
* vim-multiple-cursors
```
ctrl+q 纵向选中
ctrl+n 选中一个
ctrl+p 放弃一个, 回到上一个
ctrl+x 跳过当前选中, 选中下一个
esc    退出
```
* nerdtree
```
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
```
* ultisnips
```
"插入模式下直接通过<Tab>键来触发UltiSnips的代码块补全
let g:UltiSnipsExpandTrigger="<Tab>"
"弹出UltiSnips的可用列表,由于不常用, 所以这里设置成了特殊的<C-i>映射
"let g:UltiSnipsListSnippets="<C-i>"
"<C-f>跳转的到下一个代码块可编辑区
let g:UltiSnipsJumpForwardTrigger="<C-b>"
"<C-b>跳转到上一个代码块可编辑区
let g:UltiSnipsJumpBackwardTrigger="<C-z>"
```
* DoxygenToolkit
```
License

将光标放在需要生成 License 的地方，然后输入命令 :DoxLic

Author

将光标放在合适的地方，然后输入命令 :DoxAuthor

Function / Class

将光标放在 function 或者 class 的名字所在的一行，然后输入命令 :Dox

Ignore code fragment (C/C++ Only)

如果想忽略调试部分的代码，那么只需要执行命令 :DoxUndoc(DEBUG) 即可

Group

输入命令 DoxBlock 来插入一个注释块
```

# 操作

* 替换
```
:s/old/new - 用new替换当前行第一个old。
:s/old/new/g - 用new替换当前行所有的old。
:n1,n2s/old/new/g - 用new替换文件n1行到n2行所有的old。
:%s/old/new/g - 用new替换文件中所有的old。
:%s/^/xxx/g - 在每一行的行首插入xxx，^表示行首。
:%s/表示行尾。
所有替换命令末尾加上c，每个替换都将需要用户确认。 如：%s/old/new/gc，加上i则忽略大小写(ignore)。
```

* 正则表达式
```
\d: 表示十进制数（我猜的）
\s: 表示空格
\S: 非空字符
\a: 英文字母
\|: 表示 或
\.: 表示.
{m,n}: 表示m到n个字符。这要和 \s与\a等连用，如 \a\{m,n} 表示m 到n个英文字母。
{m,}: 表示m到无限多个字符。
**: 当前目录下的所有子目录。
```
* 拼写检查
```
:set spell－开启拼写检查功能
:set nospell－关闭拼写检查功能
]s－移到下一个拼写错误的单词
[s－作用与上一命令类似，但它是从相反方向进行搜索
z=－显示一个有关拼写错误单词的列表，可从中选择
zg－告诉拼写检查器该单词是拼写正确的
zw－与上一命令相反，告诉拼写检查器该单词是拼写错误的
```

* 宏
```
. –重复上一个编辑动作
qa：开始录制宏a（键盘操作记录）
q：停止录制
@a：播放宏a
```

* 文件加解密
```
vim -x file: 开始编辑一个加密的文件。
:X – 为当前文件设置密码。
:set key= – 去除文件的密码。
```

* 文件的编码
```
:e ++enc=utf8 filename, 让vim用utf-8的编码打开这个文件。
:w ++enc=gbk，不管当前文件什么编码，把它转存成gbk编码。
:set fenc或:set fileencoding，查看当前文件的编码。
在vimrc中添加set fileencoding=ucs-bom,utf-8,cp936，vim会根据要打开的文件选择合适的编码。 注意：编码之间不要留空格。 cp936对应于gbk编码。 ucs-bom对应于windows下的文件格式。
```

* 文件格式
```
大致有三种文件格式：unix, dos, mac. 三种格式的区别主要在于回车键的编码：dos 下是回车加换行，unix 下只有 换行符，mac 下只有回车符。

:e ++ff=dos filename, 让vim用dos格式打开这个文件。
:w ++ff=mac filename, 以mac格式存储这个文件。
:set ff，显示当前文件的格式。
```

* 多标签编辑
```
vim -p files: 打开多个文件，每个文件占用一个标签页。
:tabe, tabnew – 如果加文件名，就在新的标签中打开这个文件， 否则打开一个空缓冲区。
^w gf – 在新的标签页里打开光标下路径指定的文件。
:tabn – 切换到下一个标签。Control + PageDown，也可以。
:tabp – 切换到上一个标签。Control + PageUp，也可以。
[n] gt – 切换到下一个标签。如果前面加了 n ， 就切换到第n个标签。第一个标签的序号就是1。
:tab split – 将当前缓冲区的内容在新页签中打开。
:tabc[lose] – 关闭当前的标签页。
:tabo[nly] – 关闭其它的标签页。
:tabs – 列出所有的标签页和它们包含的窗口。
:tabm[ove] [N] – 移动标签页，移动到第N个标签页之后。 如 tabm 0 当前标签页，就会变成第一个标签页。
```
