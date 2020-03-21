" _ __ ___  _   _       _ ____       __ __ ___
"| '_ ` _ \| | | |_____| '_ \ \ / / | '_ ` _ \
"| | | | | | |_| |_____| | | \ V /| | | | | | |
"|_| |_| |_|\__, |     |_| |_|\_/ |_|_| |_| |_|
           "|___/

" ===
" === Auto load for first time uses
" ===
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ====================
" === Editor Setup ===
" ====================

"filetype plugin indent on 
filetype plugin on
filetype detect
" ===
" === System
" ===
"set clipboard = unnamed
let &t_ut=''
set autochdir



set tags=~/.local/share/nvim/tags

" ===
" === Editor behavior
" ===
set number
"set relativenumber
set cursorline
set cursorcolumn
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set ttimeoutlen=0
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set formatoptions-=tc
set splitright
set splitbelow
set mouse=a

set ambiwidth=double
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" ===
" === Terminal Behavior
" ===
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
"tnoremap <C-N> <C-\><C-N>:q<CR>


" ===
" === Status bar behaviors
" ===
set noshowmode
set showcmd
" set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu

" Searching options
exec "nohlsearch"
set ignorecase
set smartcase


"+y
set clipboard=unnamedplus
vnoremap <Leader>u "y <Bar> :call system('xclip', @y)<CR>
" ===
" === Basic Mappings
" ===

let mapleader=" "


"     ^
"     i
"< j     l >
"     k
"     -
"
noremap j h
noremap J H
noremap i k
noremap I K
noremap k j
noremap K J
noremap h i
noremap H I
noremap T R
noremap R T
noremap t r
noremap r t
noremap ;  :
noremap 9 $
noremap U  Y
noremap Y  U
noremap u  y
noremap y  u
noremap yy uu
noremap uu yy
noremap v  q
noremap q  v
noremap V  Q
noremap Q  V

nmap d[ dh[
nmap d( dh(
nmap d' dh'
nmap d" dh"
nmap d{ dh{
nmap d< dh<
nmap u[ uh[
nmap u( uh(
nmap u' uh'
nmap u" uh"
nmap u< uh<
nmap u{ uh{
nmap c[ ch[
nmap c( ch(
nmap c' ch'
nmap c" ch"
nmap c{ ch{
nmap c< ch<
nmap q[ qh[
nmap q( qh(
nmap q' qh'
nmap q" qh"
nmap q{ qh{
nmap q< qh<

nmap z< ysaw<
nmap z' ysaw'
nmap z" ysaw"
nmap z[ ysaw[
nmap z{ ysaw{
nmap z( ysaw(

nmap zz< yss<
nmap zz' yss'
nmap zz" yss"
nmap zz[ yss[
nmap zz{ yss{
nmap zz( yss(

iab syso    int main(int argc,const char *argv[]){<cr><??>;<cr>return 0;}<Esc>
iab if      if(<??>){<cr><??>;}<Esc>
iab for     for(<??>; <??>; <??>){<cr><??>;}<Esc>
iab while   while(<??>){<cr><??>;}<Esc>
iab classs  class <??>{<cr><??>:};<Esc>
iab try     try{<cr><??>}catch(<??>){<cr><??>}<Esc>
iab structs struct <??>{<cr><??>;};<Esc>
iab switch  switch(<??>){<cr>case <??>:<cr><??>;<cr>break;<cr>default:<cr>break;}<Esc>

map <C-v> <C-q>

map <LEADER><LEADER> <Esc>/<??><CR>:nohlsearch<CR>c4l
noremap <LEADER>=  :Tabularize /=<CR>

"tab
map <Tab> <CR>
"Quickly quit
nmap <LEADER>q :q!<CR>
"Quick save
nmap <LEADER>w :w!<CR>


map sn :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
map zn :set nosplitbelow<CR>:split<CR>:set splitright<CR>
autocmd BufNewFile *.[ch],*.cpp,*.java,*.sh,*.py,*.php exec ":call SetTitle()"
func SetTitle()
    if &filetype == 'php'
        call setline (1,        "<?php")
        call append(line(".")+0,"/*********************************************")
        call append(line(".")+1,"*     ------------------------")
        call append(line(".")+2,"*     file name: ".expand("% :t"))
        call append(line(".")+3,"*     author   : @ JY")
        call append(line(".")+4,"*     date     : ".strftime("%Y--%m--%d")       )
        call append(line(".")+5,"**********************************************/")
    else
        call setline (1,        "/*********************************************")
        call append(line(".")+0,"*     ------------------------")
        call append(line(".")+1,"*     ------------------------")
        call append(line(".")+2,"*     file name: ".expand("% :t"))
        call append(line(".")+3,"*     author   : @ JY")
        call append(line(".")+4,"*     date     : ".strftime("%Y--%m--%d")       )
        call append(line(".")+5,"**********************************************/")
    endif
    if &filetype == 'c'
       call append(line(".")+6,"#include <stdio.h>")
       call append(line(".")+7,"#include <stdlib.h>")
   endif
   if &filetype == 'cpp'
       call append(line(".")+6,"#include <iostream>")
       call append(line(".")+7,"#include <stdlib.h>")
       call append(line(".")+8,"using  namespace  std;")
   endif
endfunc
autocmd BufNewFile * normal G
" ===
" === Install Plugins with Vim-Plug
" ===

call plug#begin('~/.config/nvim/plugged')
" Pretty Dress
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'liuchengxu/space-vim-theme'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
Plug 'dyng/ctrlsf.vim'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }
Plug 'vim-scripts/taglist.vim'

" Error checking
"Plug 'w0rp/ale'

" Auto Complete
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'davidhalter/jedi-vim'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-nvim'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-yarp'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-github'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-clang'
Plug 'ncm2/ncm2-pyclang'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-match-highlight'
Plug 'ncm2/ncm2-markdown-subscope'


" Language Server
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" (Optional) Multi-entry selection UI.
"Plug 'junegunn/fzf'

" Undo Tree
Plug 'mbbill/undotree/'
Plug 'vim-scripts/winmanager'
Plug 'mhinz/vim-startify'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'


" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }

" For general writing
Plug 'reedes/vim-wordy'
Plug 'ron89/thesaurus_query.vim'

" Bookmarks
Plug 'kshenoy/vim-signature'

"
" Other useful utilities
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'brooth/far.vim'
Plug 'tmhedberg/SimpylFold'
Plug 'kassio/neoterm'
Plug 'vim-scripts/restore_view.vim'

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'roxma/nvim-yarp'

Plug 'vim-scripts/ctags.vim'

"My
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line
Plug 'jlanzarotta/bufexplorer'
Plug 'rking/ag.vim'
Plug 'kien/rainbow_parentheses.vim'
"Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"C++ stl
Plug 'octol/vim-cpp-enhanced-highlight'
"c++ QT
Plug 'vim-scripts/OmniCppComplete'
call plug#end()
"""
autocmd VimEnter * RainbowParenthesesToggle
" ---
" --- stl
" ---
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1

"Ultisnips
let g:tex_flavor = "latex"
let g:UltiSnipsExpandTrigger=";;"
let g:UltiSnipsJumpForwardTrigger=";;"
let g:UltiSnipsJumpBackwardTrigger="<c-a>"
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/Ul_snips/']

" CtrlSF
let g:ctrlsf_ackprg='ack'
let g:ctrlsf_default_view_mode='compact'
let g:ctrlsf_auto_close=0
let g:ctrlsf_case_sensitive='no'
let g:ctrlsf_ignore_dir=['tags']
let g:ctrlsf_default_root='cwd'

" === Create a _machine_specific.vim file to adjust machine specific stuff, like python interpreter location
" ===
let has_machine_specific_file = 1
if empty(glob('~/.config/nvim/_machine_specific.vim'))
  let has_machine_specific_file = 0
  silent! exec "!cp ~/.config/nvim/default_configs/_machine_specific_default.vim ~/.config/nvim/_machine_specific.vim"
endif
source ~/.config/nvim/_machine_specific.vim

" clang
let g:ncm2_pyclang#library_path='/usr/lib/llvm-5.0/lib'
let g:ncm2_pyclang#library_path='/usr/lib64/libclang.so.5.0'


let g:ncm2_pyclang#database_path = [
	\ 'compile_commands.json',
	\ 'build/compile_commands.json'
	\ ]

let g:ncm2_pyclang#args_file_path=['.clang_complete']


"Tlist
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Compact_Format=1
set tags=tags;
set autochdir

map tree :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let NERDTreeChDirMode=2
"autocmd bufenter * if (winnr("$")) == 1 && exists("b:NERDTreeType" &&b:NERDTreeType == "primary") | q | endif
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"
let g:NERDTree_titlle="[NERDTree]"

function! NERDTree_Start()
    exe 'NERDTree'
endfunction
function! NERDTree_IsValid()
    return 1
endfunction


map <LEADER>t :TagbarOpenAutoClose<CR>

let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout="NERDTree|TagList"
"let g:winManagerWidth=30

nmap nm  :WMToggle<CR>
 
let g:AutoOpenWinManager=1

 

set termguicolors     " enable true colors support
colorscheme space_vim_theme
let g:space_vim_transp_bg = 1
set background=dark
let g:airline_theme='dracula'

let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*


" ===
" === NERDTree
" ===


" ==
" == NERDTree-git
" ==
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

" ===
" === NCM2
" ===
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>": "\<CR>")
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
let g:ncm2#matcher = "substrfuzzy"
let g:ncm2_jedi#python_version = 3
let g:ncm2#match_highlight = 'sans-serif'
set shortmess+=c
set notimeout


" ===
" === vim-indent-guide
"
" ===
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 1
silent! unmap <LEADER>ig
autocmd WinEnter * silent! unmap <LEADER>ig


" ===
" === some error checking
" ===



" ===
" === MarkdownPreview
" ===
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'firefox'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

" ===
" === Python-syntax
" ===
let g:python_highlight_all = 1
" let g:python_slow_sync = 0


" ===
" === Taglist
" ===


" ===
" === vim-table-mode
" ===
map <LEADER>mm :TableModeToggle<CR>



" === CtrlP
" ===
map <C-p> :CtrlP<CR>
let g:ctrlp_prompt_mappings = {
  \ 'PrtSelectMove("j")':   ['<c-e>', '<down>'],
  \ 'PrtSelectMove("k")':   ['<c-u>', '<up>'],
  \ }


" ===
" === vim-signiture
" ===
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "dm-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "dm/",
        \ 'PurgeMarkers'       :  "dm?",
        \ 'GotoNextLineAlpha'  :  "m<LEADER>",
        \ 'GotoPrevLineAlpha'  :  "",
        \ 'GotoNextSpotAlpha'  :  "m<LEADER>",
        \ 'GotoPrevSpotAlpha'  :  "",
        \ 'GotoNextLineByPos'  :  "",
        \ 'GotoPrevLineByPos'  :  "",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "",
        \ 'GotoPrevMarker'     :  "",
        \ 'GotoNextMarkerAny'  :  "",
        \ 'GotoPrevMarkerAny'  :  "",
        \ 'ListLocalMarks'     :  "m/",
        \ 'ListLocalMarkers'   :  "m?"
        \ }


" ===
" === Undotree
" ===
let g:undotree_DiffAutoOpen = 0
map L :UndotreeToggle<CR>

" ==
" == vim-multiple-cursor
" ==
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<c-k>'
let g:multi_cursor_select_all_word_key = '<a-k>'
let g:multi_cursor_start_key           = 'g<c-k>'
let g:multi_cursor_select_all_key      = 'g<a-k>'
let g:multi_cursor_next_key            = '<c-k>'
let g:multi_cursor_prev_key            = '<c-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


" My snippits
source ~/.config/nvim/snippits.vim


" Startify
let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]


" Testring my own plugin
if !empty(glob('~/Github/vim-calc/vim-calc.vim'))
  source ~/Github/vim-calc/vim-calc.vim
endif

"html
let g:user_emmet_install_global = 0
autocmd FileType html,css,php EmmetInstall
let g:user_emmet_leader_key=','

" Open the _machine_specific.vim file if it has just been created
if has_machine_specific_file == 0
  exec "e ~/.config/nvim/_machine_specific.vim"
endif

