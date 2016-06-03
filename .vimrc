set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


"-- PLUGINS
Plugin 'VundleVim/Vundle.vim'             "Vundle manages Vundle
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'easymotion/vim-easymotion'        "Easymotion
Plugin 'severin-lemaignan/vim-minimap'    "VIM Minimap
Plugin 'scrooloose/nerdtree.git'          "NERDtree
Plugin 'kien/ctrlp.vim.git'               "CTRL-p
Plugin 'sjl/gundo.vim.git'                "GUNDO
Plugin 'majutsushi/tagbar'                "TAGBAR
Plugin 'terryma/vim-multiple-cursors'     "MULTIPLE CURSORS
Plugin 'MarcWeber/vim-addon-mw-utils'     "For Snipmate
Plugin 'tomtom/tlib_vim'                  "For Snipmate
Plugin 'garbas/vim-snipmate'              "For Snipmate
Plugin 'honza/vim-snippets'               "For Snipmate
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround' 
Plugin 'bkad/CamelCaseMotion' 
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'reedes/vim-pencil'
Plugin 'benmills/vimux' 
Plugin 'Yggdroot/indentLine'

"Plugin 'repeat-motion'
" Plugin 'haya14busa/incsearch.vim'       "Better Inc Search
" Plugin 'ervandew/supertab'
" Plugin 'jgdavey/tslime.vim' 
" Plugin 'vim-scripts/argtextobj.vim' 
"Plugin 'repeat-motion'


call vundle#end()
filetype plugin indent on
runtime ftplugin/man.vim
syntax on

"CUSTOM COMMANDS
command! NoSyntastic SyntasticReset | lclose | SyntasticToggleMode
command! Indent :normal myggvG=`y:delm yzz
command! RunThisCFile :!clear && gcc % && ./a.out  && echo " " && echo "============================" && echo "Diff <<this<<  |  >>that>>" && echo "============================" && echo " " && echo " " &&./a.out > a.out.out && diff a.out.out shouldbe
command! MvIncUp :normal mZddggJP,<....gmZk
command! -nargs=1 IncLibrary :normal mZggJO#include <<f-args>><esc>F"s.h<esc>LxgmZ
command! -nargs=1 IncFile :normal mZggJO#include <f-args><esc>i.h<esc>gmZ
"command! AddInc :normal mZi#include <<esc>ea.h><esc>ddggJP,<....gmZkn

"AUTOCMDs 
"VIMUX COMMANDS
nnoremap <C-g><C-t> :call VimuxRunCommand("./vimuxrun.sh")<CR>

"GENERAL Settings
nnoremap ? ,
let mapleader=","	" changes the leader key
set number			" show line numbers
set rnu			   " show relative line numbers
set cursorline		" show horizontal line
set wildmenu        " visual complete cmd menu
set listchars=eol:-
set splitbelow
set splitright
set nowrap
let g:indentLine_char='┆'
colorscheme main
set colorcolumn=81
syntax match Tab /\t/

"SEARCH SETTINGS 
set incsearch 		" search as characters are typed
set ic				" sets ignore case for search
" k 

"TAB ALIGNMENT SETTINGS 
set tabstop=3		" set tab size
set shiftwidth=3
set expandtab

"Fold Settings 
set foldenable
"set foldmethod=indent
set foldmethod=syntax
"set foldexpr=myplugin#test#foldoutline()
set foldcolumn=0 
set foldlevel=99      
set foldlevelstart=99
set foldminlines=2   
set foldnestmax=1    
"set foldopen
"set foldclose

" Nerdtree Settings"  
let NERDTreeIgnore=['\.class$' ]

" EasyMotion Settings
let g:EasyMotion_smartcase = 1
let g:EasyMotion_startofline=1 " keep cursor column when j,k motion
let g:EasyMotion_use_upper=1
let g:EasyMotion_keys='ASDFGHJKL;QWERTYUIOPZXCVBNM'
let g:EasyMotion_do_mapping = 0 	"Disable default mappings
let g:EasyMotion_enter_jump_first=1
let g:EasyMotion_space_jump_first=1

" Syntastic Settings
let g:syntastic_auto_jump = 0
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = { "level": "warnings"}

" TMUX Settings
let g:tmux_navigator_no_mappings=1
let g:tmux_navigator_save_on_switch=1

" Multi-Cursor Settings
let g:multi_cursor_exit_from_normal_mode =0
let g:multi_cursor_quit_key=';'
let g:multi_cursor_insert_maps ={'j':1}

" KEYBINDINGS
" General Keybindings
noremap ; :
noremap : ;
noremap L ;
noremap H ,

inoremap jk <esc>
inoremap Jk <esc>
inoremap jl <esc><right>a
inoremap ` <esc><right>a
"nnoremap <Leader>c i//>>  //<<<ESC>bDi
"nnoremap <Leader>fn i#>>  #<<<ESC>bDi
nnoremap M J
nnoremap gM :Man <cword><CR>
noremap <silent> J :keepjumps normal }<CR>
noremap <silent> K :keepjumps normal {<CR>
vnoremap J }
vnoremap K {
noremap W $
nnoremap B ^
nnoremap gm `


" Script Keybindings 
nnoremap <Leader>r :call VimuxRunCommand("!!")<CR>
"nnoremap <Leader>r :call VimuxRunCommand("./vimuxrun.sh")<CR>
nnoremap <Leader>rt :RunThisCFile<CR>
nnoremap <Leader>T :TagbarOpen<CR>
nnoremap <Leader>u :GundoToggle<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>m :MinimapToggle<CR>
nnoremap <Leader>i :Indent<CR>
nnoremap <Leader>. :nohlsearch<CR>
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>
"Files
nnoremap <Leader>ve :vs ~/.vimrc<CR>
nnoremap <Leader>vu :so ~/.vimrc<CR>
nnoremap <Leader>vce :vs ~/.vim/colors/main.vim<CR>
nnoremap <Leader>sce :vs ~/.vim/bundle/vim-snippets/snippets/c.snippets<CR>
nnoremap <Leader>scppe :vs ~/.vim/bundle/vim-snippets/snippets/cpp.snippets<CR>
nnoremap <Leader>se :vs ~/.vim/bundle/vim-snippets/snippets/_.snippets<CR> 
map <Leader>w <Plug>(easymotion-w)
map <Leader>b <Plug>(easymotion-b)
map <Leader>s <Plug>(easymotion-s)
map <Leader>f <Plug>(easymotion-s)

map / <Plug>(easymotion-sn)
map n <Plug>(easymotion-next)
sunmap n
map N <Plug>(easymotion-prev)
map <Leader><space> <Plug>(easymotion-s2)
map <space><space> <Plug>(easymotion-s2)

"
" Splits
nnoremap <Leader>= <C-W>=

nnoremap gsh :leftabove vnew<CR> 
nnoremap gsl :rightbelow vnew<CR> 
nnoremap gsk :leftabove new<CR> 
nnoremap gsj :rightbelow new<CR> 
" 
" File Keybindings

"Movements
nnoremap <Leader>< <<
nnoremap <Leader>> >>
nnoremap > g;
nnoremap < g,

"Resize Vim Splits
" 'V(iewport) H(eight) + or -'
nnoremap <c-w><up> :res +10<CR>
nnoremap <c-w><down> :res -10<CR>
nnoremap <c-w><left> :vertical :res -10<CR>
nnoremap <c-w><right> :vertical :res +10<CR>

nnoremap zl 14zl
nnoremap zh 14zh


nnoremap gO :CtrlP<CR>
nnoremap gM :Man <cword><CR>
nnoremap g2M :Man 2 <cword><CR>
nnoremap g3M :Man 3 <cword><CR>

nnoremap gt :!ctags -R . <CR><CR>g<c-]>
nnoremap gT :!ctags -R . <CR><CR>

nnoremap <leader><c-p> :CtrlP<CR>
nnoremap <c-p> :CtrlPBuffer<CR>
