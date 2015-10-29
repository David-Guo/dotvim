set nocompatible
filetype off

" set the path of Vundle
set rtp+=~/.vim/bundle/Vundle.vim
" set the path of the plugin to be install by Vundle
call vundle#rc('~/.vim/bundle')
Bundle 'Markdown'
Bundle 'Markdown-syntax'
Bundle 'solarized'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Lokaltog/vim-powerline'


syntax enable
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
set nu
set hls
set nobackup
set clipboard+=unnamed  " 支持复制到系统剪切版
set incsearch		" 开启实时搜索
set ignorecase		" 搜索时大小写不敏感
set wildmenu		" vim 自身命令命令模式智能补全
set cindent         " C语言语法自动缩进
set autoindent      " 自动缩进 
set laststatus=2	" 总是显示状态栏
set ruler	    	" 显示光标当前位置
set cursorline      " 高亮当前行
" set cursorcolumn

filetype indent on 	" 自适应不同语言的智能缩进
set expandtab		" 制表符扩展为空格
set tabstop=4		" 设置编辑时制表符占用空格数
set shiftwidth=4	" 格式化时制表符占用空格数
set softtabstop=4	" 连续数量空格视为制表符

set foldmethod=indent	" 基于缩进或语法进行代码折叠
set foldmethod=syntax
set nofoldenable	" 启动 vim 时关闭折叠代码
" set background=dark
" colorscheme solarized

filetype plugin on
let mapleader=";"
map<silent><leader>ee :e ~/.vimrc<cr>
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" setting of syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'

" YouCompleteMe 功能
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
let g:ycm_seed_identifiers_with_syntax=1
set tags+=/data/misc/software/misc./vim/stdcpp.tags
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
let g:ycm_complete_in_comments=1
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_cache_omnifunc=0

autocmd! bufwritepost .vimrc source ~/.vimrc
" 使光标停留在上次打开文件所在行
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
