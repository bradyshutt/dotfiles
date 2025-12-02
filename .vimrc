
" General Settings
"nnoremap ? ,
let mapleader=","
set number
set rnu
set cursorline
set wildmenu
set listchars=eol:-
set splitbelow
set splitright
set nowrap
"set synmaxcol=160
let g:indentLine_char='.'
" set colorcolumn=81
set rtp+=~/.vim/custom/
syntax match Tab /\t/


" Vimux
nnoremap <C-g><C-t> :call VimuxRunCommand("./run")<CR>


" TMUX Settings
let g:tmux_navigator_no_mappings=1
let g:tmux_navigator_save_on_switch=1

" Folds
set foldenable
"set foldmethod=indent
set foldmethod=syntax
set foldmarker={,}
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
"inoremap ~ <esc><right>a
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
map <Leader>/ <Plug>(easymotion-sn)
map <Leader>f <Plug>(easymotion-overwin-f2)
"map n <Plug>(easymotion-next)
"sunmap n
"map N <Plug>(easymotion-prev)
map <Leader><space> <Plug>(easymotion-s)
"i;w noremap ` <esc><right>a
inoremap <C-H> <esc>i
"inoremap <C-J> <esc>bi
"inoremap <C-J> <left>
"inoremap <C-K> <esc>ea
"inoremap <C-K> <right>
inoremap <C-L> <esc><right>a
nnoremap <Leader>< <<
nnoremap <Leader>> >>
nnoremap <c-right> g,
nnoremap <c-left> g;
nnoremap > g;
nnoremap < g,



