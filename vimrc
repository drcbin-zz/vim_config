
" ============================== vim 自带配置区

" set mouse = a


" 重要设置
set nocompatible                       " 启用插件扩展


" 设置提示音
set noeb                               " 不发出错误提示音




" 设置编码
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1




" 设置和系统剪切板共用
set clipboard=unnamed
" map y +y
" map Y +Y
" map yy +yy
" map p +p
" map P +P




" 编辑相关设置
set autoread                           "自动读入在外面修改过的文件
set foldenable                         " 启用折叠
set foldlevelstart=99                  " 打开文件是默认不折叠代码, 从多少层开始折叠
set foldmethod=indent                  " 设置折叠模式,按照缩进折叠
set wildmenu                           " 命令模式下补全以菜单形式显示
set wildmode=list:longest,full         " 命令模式补全模式

" ===== Tab键及缩进相关
set ts=4
set sw=4
set expandtab                          " tab 替换成空格
set autoindent                         " 换行自动缩进
set smarttab                           " 智能插入tab
set list listchars=tab:▸\ ,trail:.,    " 设置tab和空格的显示符号

" ===== 查找相关
set ignorecase                         " 查找忽略大小写
set smartcase                          " 智能应用大小写，有一个大写时开启大小写敏感
set incsearch                          " 搜索是光标在匹配项间跳动
" ========== 当光标一段时间保持不动了，就禁用高亮
set ut=1000                             " 事件更新时间
autocmd cursorhold * set nohlsearch

" ===== 当输入查找命令时，再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * :set hlsearch<cr>*




"  快捷键以及一些操作
imap kj <ESC>
vmap kj <ESC>
map mm <leader>c<space>                " mm智能判断加上/解开注释"
" ===== 空格折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> 
" ===== buffer 快捷键
nnoremap bn :bn<CR>
nnoremap bp :bp<CR>
nnoremap bd :bd<CR>




" 显示相关"
" ===== 颜色相关
syntax enable                          " 启用语法
" let g:solarized_termcolors=256
set background=dark                     " 使背景看起来更加舒服,可选 dark/light
" colorscheme gruvbo                    " 设置配色方案, 寻找  colors/{name}的配色方案文件
set cursorline                         " 突出显示当前行 :help cterm-colors"
hi CursorLine   cterm=None ctermbg=None ctermfg=None guibg=darkred guifg=NONE 

set cursorcolumn                       " 突出显示当前列"
hi CursorColumn   cterm=NONE ctermbg=None ctermfg=NONE guibg=NONE guifg=NONE
" ===== 布局相关
set helplang=cn                        " 设置中文帮助
set guioptions-=r                      " 隐藏滚动条
set guioptions-=L                      " 隐藏滚动条
set guioptions-=b                      " 隐藏滚动条
set nu relativenumber                  " 显示行号，相对行号
set showmatch                          " 显示匹配的括号
set matchtime=1                        " 括号跳转时间
set scrolloff=5                        " 距离顶部和底部5行
set laststatus=2                       " 命令行为两行
set showcmd                            " 在命令行显示命令， 如 -- INSERT --









" ============================== 自定义配置取

" 快捷键
" ===== F5键编译运行文件
map <F5> :call CompileRun()<CR>












" ============================== 插件配置区

" ===== for airline"
" ===== 上面和下面的状态栏
" ===== url:https://github.com/vim-airline/vim-airline
let g:airline_theme="solarized_flood"              " 主题选择"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" if !exists('g:airline_symbols')
    " let g:airline_symbols = {}
" endif
" unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.crypt = '��'
" let g:airline_symbols.linenr = '☰'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.maxlinenr = '㏑'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.spell = 'Ꞩ'
" let g:airline_symbols.notexists = 'Ɇ'
" let g:airline_symbols.whitespace = 'Ξ'





" ===== Commenter 
let g:NERDSpaceDelims = 1                " 注释的时候自动加个空格




" ===== sparkup ######
let g:sparkupExecuteMapping = 'bb'





" ===== for ctrlP(搜索文件)
" ctrl + j/k 进行上下选择
" ctrl + x 在当前窗口水平分屏打开文件
" ctrl + v 同上, 垂直分屏
" ctrl + t 在tab中打开
let g:ctrlp_map = '<c-p>'                             " 打开搜索快捷键
let g:ctrlp_cmd = 'CtrlP'
" map <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }                                               " 配置不搜索的文件类型
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1






" ===== for indentline
let g:indentLine_enabled = 1                          " 启用缩进对其
let g:indentLine_char = '|'                           " 设置缩进线符号




" ===== ale
nmap <Leader>en <Plug>(ale_next)   
nmap <Leader>ep <Plug>(ale_previous)
let g:ale_fix_on_save = 1                             " 保存时检测
let g:ale_set_highlights = 0                          " 错误高亮
let g:ale_linters = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['pylint'],
\   'javascript': ['eslint'],
\}                                                    " 设置语法检测方式



" ===== for nerdtree
map <C-k><C-b> :NERDTreeToggle<CR>                    " 设置开启侧边树快捷键
" autocmd vimenter * NERDTree                           "打开vim时自动开启
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif "退出vim时自动退出"
let NERDTreeWinSize=25                                " 侧边栏宽度
let NERDTreeMinialUI=1                                " 
let NERDTreeIgnore =['\.pyc', '\~$', '\.swp','\.gch','\.out', '\.o', '\.d']  " 设置不包含的文件
let NERDTreeQuitOnOpen=1                              " 退出时自动退出侧边栏





" ===== nredtree-git

let g:NERDTreeIndicatorMapCustom = { 
    \ "Modified"  : "Modified",
    \ "Staged"    : "Staged",
    \ "Untracked" : "Untracked",
    \ "Renamed"   : "Renamed",
    \ "Unmerged"  : "Unmeraged",
    \ "Deleted"   : "Deleted",
    \ "Dirty"     : "Direy",
    \ "Clean"     : "Clean",
    \ "Unknown"   : "Unknow"
    \ }                                               " 设置git状态的显示符





" ###### for rainbow 第二版 ######
let g:rainbow_active = 1

let g:rainbow_conf = {
    \    'guifgs': ['firebrick3', 'firebrick3','SeaGreen3', 'SeaGreen3', 'firebrick3', 'darkorange3', 'firebrick'],
    \    'ctermfgs': ['red', 'darkgreen', 'darkred', 'blue', 'brown',  'lightyellow', 'lightmagenta'],
    \    'operators': '_,_',
    \    'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \    'separately': {
    \        '*': {},
    \        'tex': {
    \            'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
    \        },
    \        'lisp': {
    \            'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    \        },
    \        'vim': {
    \            'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    \        },
    \        'html': {
    \            'parentheses': ['start=/\v\<((div|form|area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ > ])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
    \        },
    \        'css': 0,
    \    }
   \}



" ===== syntastic ####
" recommend
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" custom
" let g:syntastic_always_populate_loc_list = 1          " 自动拉起/关闭错误窗口, 不需要手动调用 :Errors
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1                     " 打开文件的时候做检查
" let g:syntastic_check_on_wq = 1                       " 每次保存的时候做检查
let g:syntastic_python_checkers = ['pyflakes', 'python3']          " 语法检测工具
" let g:syntastic_javascript_checkers = ['jsl', 'jshint']
" let g:syntastic_html_checkers = ['tidy', 'jshint']
" let g:syntastic_error_symbol = 'E'                    " 错误符号
" let g:syntastic_warning_symbol = 'W'
" let g:syntastic_aggregate_errors = 1





" ===== tagbar
nmap <C-f><C-b> :TagbarToggle<CR>                     " 设置打开taglist快捷键
let g:tagbar_autofocus = 1                            " 自动定位到当前光标位置
let g:tagbar_autoclose = 1                            " 退出时自动关闭
let g:tagbar_width = 30                               " 设置窗口宽度
let g:tagbar_type_ruby = {
    \ 'kinds' : [
    \ 'm:modules',
    \ 'c:classes',
    \ 'd:describes',
    \ 'C:contexts',
    \ 'f:methods',
    \ 'F:singleton methods'
    \ ]
\ }                                                   " for ruby, delete if you do not need




" ===== ycm http://www.cnblogs.com/zhongcq/p/3630047.html ###
"默认配置文件路径"
let g:ycm_python_binary_path = 'python3'              " 设置python环境
set completeopt=longest,menu                          " 让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项
" 上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" :\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
let g:ycm_collect_identifiers_from_tags_files=1       " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=1           " 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0                            " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1              " 语法关键字补全
nnoremap <F6> :YcmForceCompileAndDiagnostics<CR>      " force recomile with syntastic
nnoremap <leader>lo :lopen<CR>                        " open locationlist
nnoremap <leader>lc :lclose<CR>                       " close locationlist
inoremap <leader><leader> <C-x><C-o>
let g:ycm_complete_in_comments = 1                    " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                     "在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0 "注释和字符串中的文字也会被收入补全
let g:ycm_global_ycm_extra_conf = '~/.vim/plug/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'





" ===== UltiSnips
let g:UltiSnipsExpandTrigger="<c-j>"                  " 补全快捷键"


" map <c-b> :Autopep8<CR> :w<CR> :call RunPython()<CR>
" function RunPython()
    " let mp = &makeprg
    " let ef = &errorformat
    " let exeFile = expand("%:t")
    " setlocal makeprg=python\ -u
    " set efm=%C\ %.%#,%A\ \ File\ \"%f\",\ line\ %l%.%#,%Z%[%^\ ]%@=%m
    " silent make %
    " copen
    " let &makeprg = mp
    " let &errorformat = ef
" endfunction



"autopep8设置"
let g:autopep8_disable_show_diff=1
""




" ===== markdown-preview.vim
" let g:mkdp_path_to_chrome = "/usr/bin/google-chrome"
let g:mkdp_path_to_chrome = "/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe"
let g:mkdp_auto_start = 1                             " 设自打开




" ===== Limelight
let g:limelight_conceal_ctermfg = 'gray' 
let g:limelight_conceal_ctermfg = 240


" ===== for vim-plug######
" filetype off                                          " required
" set rtp+=~/.vim/bundle/Vundle.vim                     " set the runtime path to include Vundle and initialize
call plug#begin('~/.vim/plug')

" ===== 通用插件
"
" ========== 功能
Plug 'VundleVim/Vundle.vim'
Plug 'jiangmiao/auto-pairs'                         " 括号配对,输入左边括号\引号， 自动出现右边出号，并将光标跳转到中间
Plug 'ctrlpvim/ctrlp.vim'                           " 文件搜索插件
Plug 'Yggdroot/indentLine'                          " 缩进线
Plug 'scrooloose/nerdtree'                          " 侧边栏树目录
Plug 'jistr/vim-nerdtree-tabs'                      " 多文件共享NerdTree
Plug 'Xuyuanp/nerdtree-git-plugin'                  " 侧边栏树目录git状态插件
Plug 'majutsushi/tagbar'                            " 侧边栏左边标签列表, 如函数定义，变量，类等
Plug 'iamcco/markdown-preview.vim'                  " 浏览器中markdown预览
Plug 'iamcco/mathjax-support-for-mkdp'              " 是markdown支持公式
Plug 'terryma/vim-multiple-cursors'                 " 多光标操作
Plug 'chxuan/change-colorscheme'                    " 配色方案管理器

" ========= 美化
Plug 'luochen1990/rainbow'                          " 彩色括号配对加强版，能配对html标签deng
Plug 'vim-airline/vim-airline'                      " 上下状态栏
Plug 'vim-airline/vim-airline-themes'               " 状态栏主题
Plug 'junegunn/limelight.vim'                       " 高亮部分文字
Plug 'morhetz/gruvbox'                              " 配色方案
Plug 'altercation/vim-colors-solarized'             " 配色方案
Plug 'w0ng/vim-hybrid'                              " 配色方案



" ===== 辅助开发插件
" ========== 通用插件
Plug 'SirVer/ultisnips'                             " 代码块工具
Plug 'honza/vim-snippets'
Plug 'vim-scripts/The-NERD-Commenter'               " 快捷注释
Plug 'vim-syntastic/syntastic'                      " 语法检测[need setup]
Plug 'w0rp/ale'                                     " 语法检测，美化工具[need setup] vim8 only
Plug 'Valloric/YouCompleteMe'                       " 比较通用的补全插件
Plug 'tenfyzhong/CompleteParameter.vim'             " 参数补全， 用于辅助YCM或者neocomplete


" ========== 针对python开发
Plug 'nvie/vim-flake8'                              " pep8 代码风格检测

call plug#end()                                       " required




" ============================== 自定义脚本区
" ===== 一件运行文件
fun! CompileRun()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<.out"
        exec "!time ./%<.out"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'python'
        exec "!time python3 %"
    elseif &filetype == 'javascript'
        exec "!node %<.js"
    elseif &filetype == 'html'
        exec "!google-chrome %"
        " need javascript engine support, nodejs build-in.
    endif
endfunc

" ===== 自动下载 vim-plug插件管理工具
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC 
endif
