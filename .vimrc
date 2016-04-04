set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

">> PLUGINS
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
" Plugin 'haya14busa/incsearch.vim'       "Better Inc Search
" Plugin 'ervandew/supertab'
" Plugin 'Yggdroot/indentLine'
" Plugin 'jgdavey/tslime.vim' 
" Plugin 'vim-scripts/argtextobj.vim' 
" Plugin 'benmills/vimux' 

"<<
call vundle#end()
filetype plugin indent on
syntax on

">> SCRIPTS
   ">> CUSTOM COMMANDS
      command! NoSyntastic SyntasticReset | lclose | SyntasticToggleMode
      command! Indent :normal myggvG=`y:delm yzz
      
   "<<
   ">> AUTOCMDs 
      set fmr=//>>,//<<
      :autocmd FileType java setlocal fmr=//>>,//<<
      :autocmd FileType cpp setlocal fmr=//>>,//<<
      :autocmd FileType c setlocal fmr=//>>,//<<
      :autocmd FileType ruby setlocal fmr=#>>,#<<
      :autocmd FileType vim setlocal fmr=\">>,\"<< 

   "<<

"<<
">> SETTINGS
   ">> GENERAL 
         let mapleader=","	" changes the leader key
         set number			" show line numbers
         set rnu			   " show relative line numbers
         set cursorline		" show horizontal line
         set wildmenu        " visual complete cmd menu
         set listchars=eol:-
         set splitbelow
         set splitright
         set nowrap
         let g:indentLine_color_term=111
         let g:indentLine_char='┆'
         highlight clear SignColumn
         colorscheme main
         set colorcolumn=81
         syntax match Tab /\t/
         hi Tab gui=underline guifg=blue ctermbg=blue

   "<<
   ">> Search Settings 
      set incsearch 		" search as characters are typed
      set ic				" sets ignore case for search

   "<<
   ">> Tab Alignment Settings 
      set tabstop=3		" set tab size
      set shiftwidth=3
      set expandtab

   "<<
   ">> Fold Settings 
      set foldenable
      set fdc=0
      set fdls=1
      set foldmethod=marker 
      
   "<<
   ">> Nerdtree Settings"  
      let NERDTreeIgnore=['\.class$' ]

   "<< 
   ">> EasyMotion Settings
      hi EasyMotionTarget ctermbg=none ctermfg=green
      let g:EasyMotion_smartcase = 1
      let g:EasyMotion_startofline=1 " keep cursor column when j,k motion
      let g:EasyMotion_use_upper=1
      let g:EasyMotion_keys='ASDFGHJKL;QWERTYUIOPZXCVBNM'
      let g:EasyMotion_do_mapping = 0 	"Disable default mappings
      let g:EasyMotion_enter_jump_first=1
      let g:EasyMotion_space_jump_first=1

   "<<
   ">> Syntastic Settings
      let g:syntastic_auto_jump = 0
      let g:syntastic_always_populate_loc_list = 0
      let g:syntastic_auto_loc_list = 0
      let g:syntastic_check_on_open = 1
      let g:syntastic_check_on_wq = 0
      let g:syntastic_quiet_messages = { "level": "warnings"}

   "<<
   ">> TMUX Settings
      let g:tmux_navigator_no_mappings=1
      let g:tmux_navigator_save_on_switch=1

   "<<
   ">> Multi-Cursor Settings
      let g:multi_cursor_exit_from_normal_mode =0
      let g:multi_cursor_quit_key=';'
      let g:multi_cursor_insert_maps ={'j':1}
      highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
      highlight link multiple_cursors_visual Visual

   "<<

"<<
">> KEYBINDINGS
   ">> General Keybindings
      noremap ; :
      noremap : ;
      inoremap jk <esc>		         
      nnoremap <Leader>c i//>>  //<<<ESC>bDi
      nnoremap <Leader>fn i#>>  #<<<ESC>bDi
      nnoremap M J
      noremap J }
      noremap K {
      noremap L 3w
      noremap H 3b
      noremap W $
      noremap B ^

   "<<
   ">> Script Keybindings 
      nnoremap <Leader>i :Indent<CR> 
      nnoremap <Leader>. :nohlsearch<CR>        " Turns off highlighting after a search 
      
   "<<
   ">> Plugin Keybindings
      nnoremap <Leader>T :TagbarOpen<CR>
      nnoremap <Leader>u :GundoToggle<CR>
      nnoremap <Leader>n :NERDTreeToggle<CR>
      nnoremap <Leader>m :MinimapToggle<CR>

      nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
      nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
      nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
      nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
      nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

      map <Leader>w <Plug>(easymotion-w)
      map <Leader>b <Plug>(easymotion-b)
      map <Leader>s <Plug>(easymotion-s)
      map <space> <Plug>(easymotion-s)
      map / <Plug>(easymotion-sn)
      map n <Plug>(easymotion-next)
      map N <Plug>(easymotion-prev)
      map <Leader><space> <Plug>(easymotion-s2)
      map <space><space> <Plug>(easymotion-s2)
      
   "<<
   ">> Splits
      nnoremap <Leader>= <C-W>=
      nnoremap - <C-W><
      nnoremap = <C-W>>
      nnoremap + <C-W>-
      nnoremap _ <C-W>+

      nnoremap 0 <C-W>r
      nnoremap 9 <C-W>R
      nnoremap 8 <C-W>x

      nnoremap gsh :leftabove vnew<CR> 
      nnoremap gsl :rightbelow vnew<CR> 
      nnoremap gsk :leftabove new<CR> 
      nnoremap gsj :rightbelow new<CR> 
   "<< 
   ">> File Keybindings
      nnoremap <Leader>ove :sp ~/.vimrc<CR> 
      nnoremap <Leader>ovu :so ~/.vimrc<CR> 
      nnoremap <Leader>ose :sp ~/.vim/bundle/vim-snippets/snippets/_.snippets<CR> 
      
   "<<
   ">> Fold Keybindings 
   nnoremap <Leader>F :set fmr=
   nnoremap <Leader>f1 :set foldmethod=marker<CR>
   nnoremap <Leader>f2 :set foldmethod=syntax<CR>
   nnoremap <Leader>f3 :set foldmethod=indent<CR>

   "<<

"<<


