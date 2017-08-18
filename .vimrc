"set runtimepath+=~/.vim_runtime

"source ~/.vim_runtime/vimrcs/basic.vim
"source ~/.vim_runtime/vimrcs/filetypes.vim
"source ~/.vim_runtime/vimrcs/plugins_config.vim
"source ~/.vim_runtime/vimrcs/extended.vim

"try
"source ~/.vim_runtime/my_configs.vim
"catch
"endtry

"让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC


"老板键
let mapleader=","
inoremap <leader><leader>q <ESC>

"窗口切换
nmap <leader>wh <C-W>h
nmap <leader>wj <C-W>j
nmap <leader>wk <C-W>k
nmap <leader>wl <C-W>l
"tab 切换
map <leader>tn :tabnext<CR>
map <leader>tp :tabprevious<CR>
map <leader>td :tabnew<CR>
map <leader>te :tabedit
map <leader>tc :tabclose<CR>


"文件类型检测
filetype on
"根据侦测的类型加载对应插件
filetype plugin on

"开启实时搜索
set incsearch
"搜索时大小写不敏感
set ignorecase
"关闭兼容vi模式,可使用更多vim高级功能
set nocompatible
"命令行模式智能补全,press tab
set wildmenu

set encoding=utf-8
set fileencoding=utf8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

nmap <leader>q :q<CR>
nmap <leader>w :w<CR>

set autoread "文件修改时自动读取变化

""""""""""""""""
"vundle 环境设置
":PluginInstall
":PluginUpdate
":PluginClean
""""""""""""""""
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-scripts/peaksea' "主题风格
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'

"Plugin 'octol/vim-cpp-enhanced-highlight' "cpp语法高亮
"Plugin 'derekwyatt/vim-fswitch' "cpp接口文件和实现文件间切换
Plugin 'kshenoy/vim-signature' "显示书签
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors' "c-n c-p c-x c s
Plugin 'scrooloose/nerdcommenter' "添加注释插件cc cm ci cu c$ ca cs
Plugin 'vim-scripts/DrawIt'

Plugin 'SirVer/ultisnips' "代码补全工具
Plugin 'honza/vim-snippets' "代码补全，片段库
Plugin 'vim-syntastic/syntastic' "语法检查

Plugin 'Valloric/YouCompleteMe'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'derekwyatt/vim-protodef' "实现接口定义
Plugin 'scrooloose/nerdtree' "文件列表
Plugin 'mileszs/ack.vim' "工程中查找 "o:open; O go;t:open in new tab;h,v

"[ctrlp]file,buffer,mru,tag finder for vim"
"Press <F5> to purge the cache for the current directory to get new files, remove deleted files and apply new ignore options.
"Press <c-f> and <c-b> to cycle between modes.
"Press <c-d> to switch to filename only search instead of full path.
"Press <c-r> to switch to regexp mode.
"Use <c-j>, <c-k> or the arrow keys to navigate the result list.
"Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
"Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
"Use <c-y> to create a new file and its parent directories.
"Use <c-z> to mark/unmark multiple files and <c-o> to open them.
Plugin 'ctrlpvim/ctrlp.vim' 

Plugin 'fholgado/minibufexpl.vim' "buffer管理
Plugin 'gcmt/wildfire.vim' "快速输入结对符 space
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion' "快速移动 <leader><leader>fa
Plugin 'suan/vim-instant-markdown'
Plugin 'lilydjwg/fcitx.vim'
Plugin 'Lokaltog/vim-powerline' "美化状态栏
Plugin 'nathanaelkane/vim-indent-guides' "相同缩进代码关联起来
Plugin 'jiangmiao/auto-pairs' "（{等自动补全

" 插件列表结束
call vundle#end()
filetype plugin indent on


"""""""""
"配色方案
"""""""""
set background=light
colorscheme peaksea 
"colorscheme molokai
"colorscheme solarized 


"""""""""
"辅助信息
"""""""""
"总显示状态栏
set laststatus=2
"显示光标当前位置
set ruler
"开启行号显示
set number
"高亮当前行当前列
set cursorline
set cursorcolumn
set autochdir "自动切换当前目录为文件所在目录


"""""""""
"美化状态栏powerline
"""""""""
"let g:Powerline_colorscheme='solarized256'
"let g:Powerline_symbols='fancy'


"""""""""
"代码分析
"""""""""
"允许使用指定语法高亮配色方案替换默认方案
syntax on

"自适应不同语言的代码缩进
filetype indent on 
"将制表符扩展为空格
set expandtab
"设置制表符占用空格数
set tabstop=4
"设置格式化时制表符占用空格数
set shiftwidth=4
"vim显示连续数量的空格视为一个制表符
set softtabstop=4
"开启新行时智能自动缩进
set smartindent

"plugin indent_guides begin
"自启动
let g:indent_guides_enable_on_vim_startup=1
"从第二层开始
let g:indent_guides_start_level=2
"色块宽度
let g:indent_guides_guide_size=1
"开关快捷键
nmap <silent> <leader>i <Plug>IndentGuidesToggle
"plugin indent_guides end

"代码折叠  zR zM打开关闭所有, zazA打开关闭光标下的折叠,  zozO zczC
set foldmethod=indent "按缩进折叠
"set foldmethod=syntax "按语法折叠
set nofoldenable "启动时关闭折叠

"plugin tagbar begin
"<c-n>下个toplevel<c-p>上个toplevel<enter>jump <space>show prototype tag
let tagbar_left=1 "子窗口出现在编辑区左边
nnoremap <leader>ptb :TagbarToggle<CR> "显示/隐藏列表子窗口plugin tagbar
let tagbar_width=32 "子窗口宽度
let g:tagbar_compact=1 "不显示帮助信息
"plugin tagbar end

"plugin snippet begin
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
"plugin snippet end

"plugin nerdtree begin
"r:刷新;I:显示隐藏隐藏文件;m:展示创建删除拷贝操作列表;
nmap <leader>fl :NERDTreeToggle<CR>
let NERDTreeWinSize=32
let NERDTreeWinPos="left"
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1
"plugin nerdtree end

"plugin minibuf begin
map <leader>bl :MBEToggle<CR>
map <C-Tab> :MBEbn<CR>
map <C-S-Tab> :MBEbp<CR>
"plugin minibuf end

"plugin wildfire begin
map <SPACE> <Plug>(wildfire-fuel)
vmap <leader><SPACE> <Plug>(wildfire-water)
let g:wildfire_objects=["i'", 'i"', "i)", "i]", "i}", "i>"]
"plugin wildfire end

"plugin wildfire begin
nnoremap <leader>pud :GundoToggle<CR>
"plugin wildfire end

"plugin ctrlp begin
let g:ctrlp_map='<leader>pcp'
"let g:ctrlp_cmd='CtrlP'
"let g:ctrlp_cmd='CtrlPBuffer'
let g:ctrlp_cmd='CtrlPMixed'
"plugin ctrlp end

"plugin syntastic begin 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_aggregate_errors = 1

let g:syntastic_error_symbol = 'E!'
let g:syntastic_warning_symbol = 'W!'
"plugin syntastic end

"autocmd FileType php setlocal omnifunc=phpcomplete#Complete

nnoremap <Leader>sp :CtrlSF<CR>


autocmd FileType php set omnifunc=phpcomplete "php自动完成
