set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'Lokaltog/vim-powerline'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'dkprice/vim-easygrep'

" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_command = "goimports"
let g:go_bin_path = expand("~/.go.tools/bin")

" plugin::EasyGrep {
let g:EasyGrepCommand = 1    " vimgrep:0, grep:1 #vimgrep搜索较慢,
let g:EasyGrepMode = 2       " All:0, Open Buffers:1, TrackExt:2 #
"         1表示在已打开的buff中搜索, 2表示在当前文件相同扩展名的文件中搜索
let g:EasyGrepRecursive  = 1 " Recursive searching 递归搜索
let g:EasyGrepRoot = "search:.project" "设置搜索根路径为包含.project文件的目录,这个文件需手动创建
let g:EasyGrepIgnoreCase = 1 " Not ignore:0,

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
"
" " better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:Powerline_symbols = 'fancy'
set laststatus=2

colorscheme molokai
let g:molokai_original = 1
set background=dark

syntax on
set number
set softtabstop=4
set shiftwidth=4
set t_Co=256
set background=dark

set cursorline
set cursorcolumn
hi CursorLine cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
hi CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
