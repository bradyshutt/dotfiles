" Plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

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
Plugin 'tpope/vim-surround' 
Plugin 'scrooloose/syntastic'
Plugin 'bkad/CamelCaseMotion' 
Plugin 'xolox/vim-misc'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'reedes/vim-pencil'
Plugin 'benmills/vimux' 
Plugin 'Yggdroot/indentLine'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Bundle 'https://github.com/gorodinskiy/vim-coloresque.git'
Plugin 'https://github.com/hail2u/vim-css3-syntax.git'
Plugin 'JulesWang/css.vim'
Plugin 'groenewege/vim-less'
Plugin 'mickaobrien/vim-stackoverflow'
Plugin 'KabbAmine/zeavim.vim'
Plugin 'Dinduks/vim-java-get-set.git'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-git'

"https://github.com/.git
"Plugin 'repeat-motion'
"Plugin 'haya14busa/incsearch.vim'
"Plugin 'ervandew/supertab'
"Plugin 'jgdavey/tslime.vim' 
"Plugin 'vim-scripts/argtextobj.vim' 
"Plugin 'repeat-motion'

call vundle#end()
filetype plugin indent on
runtime ftplugin/man.vim
syntax on


" Commands
command! NoSyntastic SyntasticReset | lclose | SyntasticToggleMode
command! Indent :normal myggvG=`y:delm yzz
command! Snippets :vs ~/.vim/bundle/vim-snippets/snippets/.
command! -nargs=1 Snip :vs ~/.vim/bundle/vim-snippets/snippets/<args>.snippets
command! Copy :.w !pbcopy <CR><CR>
command! CopyFile :w !pbcopy <CR><CR>

" Autocmds 
autocmd BufRead,BufNewFile *.note set filetype=notes
autocmd BufRead,BufNewFile *.mst set filetype=html
"autocmd BufRead,BufNewFile *.less set filetype=css

set clipboard=unnamed

" Plugin Specific
" Vimux
nnoremap <C-g><C-t> :call VimuxRunCommand("./run")<CR>
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
nnoremap <leader>S :SyntasticCheck<CR>
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_auto_jump = 0
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
      \ "mode": "passive",
      \ "active_filetypes": [],
      \ "passive_filetypes": [] 
      \ }
"let g:syntastic_quiet_messages = { "level": "warnings"}
" TMUX Settings
let g:tmux_navigator_no_mappings=1
let g:tmux_navigator_save_on_switch=1
" Multi-Cursor Settings
let g:multi_cursor_exit_from_normal_mode =0
let g:multi_cursor_quit_key=';'
let g:multi_cursor_insert_maps ={'j':1}
let g:VimuxOrientation = "h"
let g:VimuxHeight = "37"
" Ctrl-p
nnoremap <leader><c-p> :CtrlPBuffer<CR>
nnoremap <c-p> :CtrlP<CR>

" Zeal Docs
let g:zv_disable_mapping = 1
nmap gz<CR> <Plug>Zeavim
nmap gzz <Plug>ZVKeyDocset<CR>
vmap gz<CR> <Plug>ZVVisSelection
nmap gzZ <Plug>ZVKeyDocset<c-w><c-w><c-w><c-w><c-w><c-w><c-w><c-w><c-w><c-w><c-w><c-w><c-w>
let g:zv_file_types = {
         \ 'javascript' : 'javascript,backbone,nodejs,express,jquery,mongodb',
         \ 'css'        : 'css,bootstrap'
         \ }

" Java GetSet
noremap gjb :InsertBothGetterSetter<CR>
noremap gjg :InsertGetterOnly<CR>
noremap gjs :InsertSetterOnly<CR>

let b:javagetset_getterTemplate=
         \ "%modifiers% %type% %funcname%() {\n" .
         \ "   return %varname%;\n" .
         \ "}\n"

let b:javagetset_setterTemplate=
         \ "%modifiers% void %funcname%(%type% %varname%) {\n" .
         \ "   this.%varname% = %varname%;\n" .
         \ "}\n"

" Easymotion
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge


" General Settings
nnoremap ? ,
let mapleader=","
set number
set rnu
set cursorline
set wildmenu
set listchars=eol:-
set splitbelow
set splitright
set nowrap
let g:indentLine_char='.'
colorscheme main
set colorcolumn=81
syntax match Tab /\t/


" Search Settings 
set incsearch
set ic


" Tabs
set tabstop=2
set shiftwidth=2
set expandtab


" Folds
set foldenable
"set foldmethod=indent
set foldmethod=syntax
set fmr={,}
set foldcolumn=0 
set foldlevel=99      
"set foldlevelstart=9
set foldminlines=2   
"set foldnestmax=1    
"set foldopen
"set foldclose
"nnoremap zm zM
nnoremap zO zR
nnoremap zr :set foldlevel=1<CR>
nnoremap zo zO
nnoremap zx zX


" General Keybindings
noremap ; :
noremap : ;
inoremap jk <esc>
inoremap Jk <esc>
inoremap jl <esc><right>a
nnoremap M J


" Movement Keybindings
noremap <silent> J 5j
noremap <silent> K 5k
noremap L ;
noremap H ,
"noremap <silent> J :keepjumps normal }<CR>
"noremap <silent> K :keepjumps normal {<CR>
"vnoremap J }
"vnoremap K {
noremap W $
nnoremap B ^
"map <Leader>w <Plug>(easymotion-w)
"map <Leader>b <Plug>(easymotion-b)
"map <Leader>s <Plug>(easymotion-s)
map <Leader>f <Plug>(easymotion-sn)
map <Leader>/ <Plug>(easymotion-overwin-f2)
"map n <Plug>(easymotion-next)
"sunmap n
"map N <Plug>(easymotion-prev)
map <Leader><space> <Plug>(easymotion-s)
"i;w noremap ` <esc><right>a
inoremap <C-H> <esc>i
"inoremap <C-J> <esc>bi
inoremap <C-J> <left>
"inoremap <C-K> <esc>ea
inoremap <C-K> <right>
inoremap <C-L> <esc><right>a
nnoremap <Leader>< <<
nnoremap <Leader>> >>
nnoremap <C-O> g;
nnoremap <C-I> g,
nnoremap > g;
nnoremap < g,
inoremap <C-@> <C-Space>
inoremap <C-Space> <right><right>


" 'Go' commands
nnoremap gm `
nnoremap gM :Man <cword><CR>
nnoremap gsh :leftabove vnew<CR> 
nnoremap gsl :rightbelow vnew<CR> 
nnoremap gsk :leftabove new<CR> 
nnoremap gsj :rightbelow new<CR> 
nnoremap gO :CtrlP<CR>
nnoremap gM :Man <cword><CR>
nnoremap g2M :Man 2 <cword><CR>
nnoremap g3M :Man 3 <cword><CR>
nnoremap grt :!ctags -R . <CR><CR>g<c-]>
nnoremap gtt g<c-]>
"nnoremap gT :!ctags -R . <CR><CR>
nnoremap gtn :tabnew<CR>
nnoremap gtc :tabnew<CR>
nnoremap gtl :tabnext<CR>
nnoremap gth :tabprevious<CR>


" Run Script Keybindings 
nnoremap <Leader>r :call VimuxRunCommand("!!")<CR>
"nnoremap <Leader>R :call VimuxRunCommand("rhino todo.js")<CR>
nnoremap <Leader>R :call VimuxRunCommand("./run")<CR>
nnoremap <Leader>c :VimuxCloseRunner<CR>
"nnoremap <Leader>r :call VimuxRunCommand("./vimuxrun.sh")<CR>
"nnoremap <Leader>rt :RunThisCFile<CR>


" Activate Plugin Keybindings
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


" Open Files
nnoremap <Leader>ve :vs ~/.vimrc<CR>
nnoremap <Leader>vu :so ~/.vimrc<CR>
nnoremap <Leader>vce :vs ~/.vim/colors/main.vim<CR>
nnoremap <Leader>s :Snip 
nnoremap <Leader>N :o ~/dev/notes/.<CR>
nnoremap <leader><leader>s :Snip javascript/javascript<CR>


" Resize Vim Splits
" 'V(iewport) H(eight) + or -'
nnoremap <Leader>= <C-W>=
nnoremap <c-w><up> :res +10<CR>
nnoremap <c-w>1 :vertical :res 45<CR>
nnoremap <c-w>2 :vertical :res 50<CR>
nnoremap <c-w>3 :vertical :res 55<CR>
nnoremap <c-w>4 :vertical :res 62<CR>
nnoremap <c-w>5 :vertical :res 68<CR>
nnoremap <c-w>6 :vertical :res 70<CR>
nnoremap <c-w>7 :vertical :res 75<CR>
nnoremap <c-w>8 :vertical :res 85<CR>
"set winwidth=85
nnoremap <c-w><down> :res -10<CR>
nnoremap <c-w><left> :vertical :res -10<CR>
nnoremap <c-w><right> :vertical :res +10<CR>
nnoremap zl 14zl
nnoremap zh 14zh


call camelcasemotion#CreateMotionMappings('<leader>')

"imap <Leader>\ <space><esc>;set paste<CR>s\<esc>;set nopaste<CR>a
"imap <Leader>` <space><esc>;set paste<CR>s`<esc>;set nopaste<CR>a
"imap <tab> <Plug>snipMateTrigger
"imap <C-\> <Plug>snipMateNextOrTrigger
"smap <C-\> <Plug>snipMateNext
 
"imap <Leader>\ <space><esc>;set paste<CR>s\<esc>;set nopaste<CR>a
"imap <C-\> <right>

let g:snipMate = {}

"let g:snipMate['no_match_completion_feedback_chars']='<right>'

"let g:notes_directories = ['~/dev/notes']







