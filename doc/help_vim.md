# 简单的vim 操作

## 分割窗口

`:split` 将屏幕分解成两个窗口

`CTRL + w` w 在窗口间移动

`:cloes` 关闭窗口而不退出vim

## 窗口大小

`num` `CTRL  w` `+` 可以使窗口增高n行

`CTRL` `w` `_` 使当前窗口最大化


## 移动窗口

`CTRL + w + K`，这里使用大写的K，可将当前窗口移动到窗口最上面 

## 折叠栏

`zo` 打开一个折叠栏
`zc` 关闭一个折叠栏

## 标签页

使用`:tabedit filename`可用于创建一个新的标签编辑文件

标签间切换使用命令`,gt`，助记符Goto tab


## 试图模式

`CTRL + v` 开启试图模式与黏贴快捷键冲突，可以在mswin.vim文件中注释掉映射

## 插件管理

使用 vundle 管理插件，下载 vundle 并解压到 vimfiles 目录下，后更改`_virm`文件。详情见参考链接。

## 更换字体

下载 Mocano 字体，放入系统文件目录`C:/window/font`，在 `_virmc` 文件中加入如下一行

    set guifont=Mocano:h10


## Reference

[vim of AlloVince](http://avnpc.com/pages/vim-of-allovince)

[vi/vim 使用进阶](http://easwy.com/blog/archives/advanced-vim-skills-syntax-on-colorscheme/)



