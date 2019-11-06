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
