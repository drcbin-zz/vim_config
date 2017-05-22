imap kj <ESC>
vmap kj <ESC>
set helplang=cn "设置中文帮助"
" set mouse = a
syntax enable

set clipboard=unnamed
" map y +y
" map Y +Y
" map yy +yy
" map p +p
" map P +P


" 显示相关"
set guioptions-=r       "隐藏滚动条"
set guioptions-=L       "隐藏滚动条"
set guioptions-=b       "隐藏滚动条"
set nu relativenumber   "显示行号，相对行号"
set autoread            "自动读入在外面修改过的文件"
set cursorline        "突出显示当前行"
hi CursorLine   cterm=NONE ctermbg=black ctermfg=None guibg=darkred guifg=NONE 
set cursorcolumn        "突出显示当前列"
hi CursorColumn   cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE
set showmatch    "显示匹配的括号"
set matchtime=1  "括号跳转时间"
set scrolloff=5        "距离顶部和底部5行"
set laststatus=2    "命令行为两行"
set wildmenu                    " 命令模式下补全以菜单形式显示
set wildmode=list:longest,full  " 命令模式补全模式
set foldenable                  " 启用折叠
set foldlevelstart=99       " 打开文件是默认不折叠代码, 从多少层开始折叠"
set foldmethod=indent " 设置折叠模式,按照缩进折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> "使用空格折叠"

" #### tab 相关 ####
set ts=4
set sw=4
set expandtab
set autoindent
set smarttab

" ### 查找相关　###
set ignorecase        "查找忽略大小写"
set smartcase         "智能应用大小写，有一个大写时开启大小写敏感"
set incsearch        "搜索是光标在匹配项间跳动"
set hlsearch        "高亮搜索项"
" 当光标一段时间保持不动了，就禁用高亮
autocmd cursorhold * set nohlsearch
" 当输入查找命令时，再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>


" inoremap <C-u> <esc>gUiwea         "按下ctrl+u" 后面输入的变成大写


map <F5> :call CompileRun()<CR>
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




set fenc=utf-8      "文件编码"
set showcmd
set list listchars=tab:▸\ ,trail:.,

"buffer 快捷键
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>


" #### for airline ####"
"
let g:airline_theme="sol"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1



" ###### for Commenter ###### 
" 注释的时候自动加个空格, 强迫症必配
let g:NERDSpaceDelims=1
" mm智能判断加上/解开注释
map mm <leader>c<space>




"#### for sparkup ######
let g:sparkupExecuteMapping = 'bb'





" #### for ctrlP(搜索文件) ####
" ctrl + j/k 进行上下选择
" ctrl + x 在当前窗口水平分屏打开文件
" ctrl + v 同上, 垂直分屏
" ctrl + t 在tab中打开
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" map <leader>f :CtrlPMRU<CR>
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






" #### for indentline ####
let g:indentLine_char = '|'
let g:indentLine_enabled = 1







" #### for nerdtree ####
map <C-k><C-b> :NERDTreeToggle<CR>
" autocmd vimenter * NERDTree   "打开vim时自动开启"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif "退出vim时自动退出"
let NERDTreeWinSize=25
let NERDTreeMinialUI=1
let NERDTreeIgnore =['\.pyc', '\~$', '\.swp','\.gch','\.out', '\.o', '\.d']
let NERDTreeQuitOnOpen=1






" #### for nredtree-git ####
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }








" #### for rainbow ####
" 暂时不用，使用更好的替代
" let g:rbpt_colorpairs = [
    " \ ['red',         'firebrick3'],
    " \ ['darkcyan',    'RoyalBlue3'],
    " \ ['Darkblue',    'SeaGreen3'],
    " \ ['darkgray',    'DarkOrchid3'],
    " \ ['darkgreen',   'firebrick3'],
    " \ ['brown',       'RoyalBlue3'],
    " \ ['darkred',     'SeaGreen3'],
    " \ ['darkmagenta', 'DarkOrchid3'],
    " \ ['brown',       'firebrick3'],
    " \ ['gray',        'RoyalBlue3'],
    " \ ['darkmagenta', 'DarkOrchid3'],
    " \ ['Darkblue',    'firebrick3'],
    " \ ['darkgreen',   'RoyalBlue3'],
    " \ ['darkcyan',    'SeaGreen3'],
    " \ ['darkred',     'DarkOrchid3'],
    " \ ]
" let g:rbpt_max = 16
" let g:rbpt_loadcmd_toggle = 0
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound    " (), the default when toggling
" au Syntax * RainbowParenthesesLoadSquare   " []
" au Syntax * RainbowParenthesesLoadBraces   " {}
" au Syntax * RainbowParenthesesLoadChevrons " <>


" ###### for rainbow 第二版 ######
let g:rainbow_active = 1

let g:rainbow_conf = {
    \    'guifgs': ['firebrick3', 'firebrick3','SeaGreen3', 'SeaGreen3', 'firebrick3', 'darkorange3', 'firebrick'],
    \    'ctermfgs': ['red', 'darkgreen', 'darkred', 'Darkblue', 'brown',  'lightyellow', 'lightmagenta'],
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
    \            'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ > ])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
    \        },
    \        'css': 0,
    \    }
   \}



" #### for sync ####
let g:syntastic_always_populate_loc_list = 1
" # 自动拉起/关闭错误窗口, 不需要手动调用 :Errors
let g:syntastic_auto_loc_list = 1
" # 打开文件的时候做检查
let g:syntastic_check_on_open = 1
" # 每次保存的时候做检查
let g:syntastic_check_on_wq = 1





" #### for fagbar ####
nmap <C-f><C-b> :TagbarToggle<CR>
" 启动时自动focus
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_width = 30
" for ruby, delete if you do not need
let g:tagbar_type_ruby = {
    \ 'kinds' : [
    \ 'm:modules',
    \ 'c:classes',
    \ 'd:describes',
    \ 'C:contexts',
    \ 'f:methods',
    \ 'F:singleton methods'
    \ ]
\ }




" ####  for ycm http://www.cnblogs.com/zhongcq/p/3630047.html ###
"默认配置文件路径"
let g:ycm_python_binary_path = '/usr/bin/python3.5'
set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项
" 上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" :\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=1 " 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0  " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
nnoremap <F6> :YcmForceCompileAndDiagnostics<CR>    "force recomile with syntastic
nnoremap <leader>lo :lopen<CR> "open locationlist
nnoremap <leader>lc :lclose<CR>   "close locationlist
inoremap <leader><leader> <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
""在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:UltiSnipsExpandTrigger="<C-j>"
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
"
" 1.install cmake
" 2.install python-dev


map <c-b> :Autopep8<CR> :w<CR> :call RunPython()<CR>
function RunPython()
    let mp = &makeprg
    let ef = &errorformat
    let exeFile = expand("%:t")
    setlocal makeprg=python\ -u
    set efm=%C\ %.%#,%A\ \ File\ \"%f\",\ line\ %l%.%#,%Z%[%^\ ]%@=%m
    silent make %
    copen
    let &makeprg = mp
    let &errorformat = ef
endfunction



"autopep8设置"
let g:autopep8_disable_show_diff=1
""



" for VIM QQ & WeChat
" call dein#add('wsdjeg/vim-chat')
let g:chatting_server_lib = '~/.vim/bundle/vim-chat/Chatting-1.0.jar'
let g:chatting_server_ip = 'wsdjeg.oicp.net'
let g:chatting_server_port = 1023



syntax enable
" set background=dark
" colorscheme solarized



" for markdown-preview.vim
let g:mkdp_path_to_chrome = "/usr/bin/google-chrome"
let g:mkdp_auto_start = 1 "设自打开



"###### for bundel ######
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'jiangmiao/auto-pairs'    "括号配对"
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'mattn/emmet-vim'  "html快速写"
Plugin 'Yggdroot/indentLine'  "缩进线"

" markdown
" Plugin 'godlygeek/tabular'
" Plugin 'plasticboy/vim-markdown'
" Plugin 'suan/vim-instant-markdown'
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'kien/rainbow_parentheses.vim'  "彩色括号陪陪对"
Plugin 'luochen1990/rainbow' "彩色括号配对加强版，能配对html标签deng"
" Plugin 'rstacruz/sparkup'   "快速写html"
Plugin 'vim-syntastic/syntastic'  "语法检测"
Plugin 'majutsushi/tagbar'  ""
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'   "这个和上一个一起，是好东西：https://ruby-china.org/topics/25023"
Plugin 'vim-airline/vim-airline' "主题"
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tell-k/vim-autopep8'  "python 代码格式化"
" Plugin 'bling/vim-airline' " MATLAB/MATLAB-fold: MATLAB

"批量注释
Plugin 'vim-scripts/The-NERD-Commenter'  

" Fugitive: Git 集成，强烈推荐！ 
" Plugin 'tpope/vim-fugitive' 已经存在

" Solarized:非常流行的配色。 
Plugin 'altercation/vim-colors-solarized' 

" Commentary:快速注释。 
Plugin 'tpope/vim-commentary' "

" 语法高亮及代码折叠插件。 
Plugin 'djoshea/vim-matlab' 
Plugin 'djoshea/vim-matlab-fold' 

" Tabular: 自动对齐。 
Plugin 'godlygeek/tabular'

" QQ & WeChat
"Plugin 'wsdjeg/vim-chat'

"taglist
Plugin 'vim-scripts/taglist.vim'


"多光标操作
Plugin 'terryma/vim-multiple-cursors'

"多文件共享NerdTree"
Plugin 'jistr/vim-nerdtree-tabs'  "使用NerdTree：http://www.aichengxu.com/view/24563528"

Plugin 'Valloric/YouCompleteMe'
"记得编译YCM，下载字体来配置状态栏主题"


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"###### bundel end ######"
