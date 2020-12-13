" _ __ ___  _   _       _ ____       __ __ ___
"| '_ ` _ \| | | |_____| '_ \ \ / / | '_ ` _ \
"| | | | | | |_| |_____| | | \ V /| | | | | | |
"|_| |_| |_|\__, |     |_| |_|\_/ |_|_| |_| |_|
"|___/

if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"colorscheme space_vim_theme
"colorscheme deus
"colorscheme hemisu
"colorscheme deep-space
"let g:quantum_black=1
"colorscheme quantum

"colorscheme OceanicNext
"let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1

colorscheme onedark
syntax on
set termguicolors     " enable true colors support
set background=dark


filetype plugin on
filetype detect
let &t_ut=''
set autochdir
"set tags = ~/.local/share/nvim/tags
set completeopt-=preview

set encoding=UTF-8
set fileencoding=UTF-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8

set number
set relativenumber
"set cursorline
"set cursorcolumn
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=25
set ttimeoutlen=0
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=marker
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
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
set noshowmode
set showcmd
set wildmenu
exec "nohlsearch"
set ignorecase
set smartcase
set clipboard=unnamedplus

let mapleader=" "
"     ^
"     i
"< j     l >
"     k
"     -
"
noremap N J
noremap S K
noremap H I

noremap j h
noremap h i
noremap i k
noremap k j

"Quick move
noremap I 5k
noremap K 5j
noremap L 4l
noremap J 4h

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
noremap w  e
noremap e  w

nmap d; dr;
nmap d[ dh[
nmap d( dh(
nmap d' dh'
nmap d" dh"
nmap d{ dh{
nmap d< dh<

nmap d] dr]
nmap d) dr)
nmap d} dr}
nmap d> dr>

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


"+y
vnoremap <Leader>u "y<Bar> :call system('xclip',@y)<CR><ESC><ESC>

iab syso    int main(int argc,const char *argv[]){<cr><??>;<cr>return 0;}<Esc>

map <Tab> <CR>
map <C-v> <C-q>
map     <LEADER><LEADER> <Esc>/<??><CR>:nohlsearch<CR>c4l
noremap <LEADER>r  :source $MYVIMRC<CR>
noremap <LEADER>co :vs $MYVIMRC<CR>
noremap <LEADER>=  :Tabularize /=<CR>
noremap <silent>   <LEADER>a za
inoremap jj <c-c>
map     <LEADER>s  9xH::std::cout<<<ESC>A<<::std::endl;<ESC>k
map     <LEADER>o  zz"d9H<img style="width:100%;" src=<ESC>pA</img><ESC>k
"Quickly qui
nmap <LEADER>q :q!<CR>
"Quick save
nmap <LEADER>w :w!<CR>
"change win
noremap <LEADER>i <c-w>k
noremap <LEADER>k <c-w>j
noremap <LEADER>j <c-w>h
noremap <LEADER>l <c-w>l

"inoremap ss <Esc>A

" split the screens
noremap si :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap sk :set splitbelow<CR>:split<CR>
noremap sj :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap sl :set splitright<CR>:vsplit<CR>

" Place the two screens up and down
noremap sn <C-w>t<C-w>K
" Place the two screens side by side
noremap sa <C-w>t<C-w>H

"load my_script
source ~/.config/nvim/my_script/my_split.vim
source ~/.config/nvim/my_script/my_header.vim
source ~/.config/nvim/_machine_specific.vim
"My snippits
source ~/.config/nvim/snippits.vim

"                                nvim 变慢
"save the change after close
"silent !mkdir -p ~/.config/nvim/old_change/backup
"silent !mkdir -p ~/.config/nvim/old_change/undo
set backupdir=~/.config/nvim/old_change/backup,.
set directory=~/.config/nvim/old_change/backup,.
if has('persistent_undo')
    set undofile
    set undodir=~/.config/nvim/old_change/undo,.
endif


call plug#begin('~/.config/nvim/plugged')

"auto size
Plug 'dm1try/golden_size' "自动设置大小
"Pretty Dress
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
"Plug 'liuchengxu/space-vim-theme'

" File navigation
"Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
"Plug 'dyng/ctrlsf.vim'

" Taglist
"Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }
"Plug 'vim-scripts/taglist.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Undo Tree
"Plug 'mbbill/undotree/'
"Plug 'vim-scripts/winmanager'
"

" Git
"Plug 'rhysd/conflict-marker.vim'
"Plug 'tpope/vim-fugitive'
"Plug 'mhinz/vim-signify'
"Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
Plug 'airblade/vim-gitgutter'
" HTML, CSS, JavaScript, PHP, JSON, etc.
"Plug 'elzr/vim-json'
"Plug 'hail2u/vim-css3-syntax'
"Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
"Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
"Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
"Plug 'mattn/emmet-vim'


" Markdown
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
"Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }

" For general writing
"Plug 'reedes/vim-wordy'

"Plug 'ron89/thesaurus_query.vim'

" Bookmarks
Plug 'kshenoy/vim-signature'

"
" Other useful utilities
Plug 'kassio/neoterm'
Plug 'vim-scripts/restore_view.vim'

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'roxma/nvim-yarp'

Plug 'lambdalisue/suda.vim'         "do stuff like :sudowrite
Plug 'vim-scripts/ctags.vim'
Plug 'tmhedberg/SimpylFold'         "<LEADER>a
Plug 'brooth/far.vim'               " search word in * file
Plug 'gcmt/wildfire.vim'            "<ENTER> in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'terryma/vim-multiple-cursors' "<c-k> <c-p>
Plug 'godlygeek/tabular'            " type ;Tabularize /= to align the =
Plug 'jiangmiao/auto-pairs'         " ()[]{}
Plug 'tpope/vim-surround'           " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'scrooloose/nerdcommenter'     " in <space>cc to comment a line
Plug 'jlanzarotta/bufexplorer'
Plug 'machakann/vim-highlightedyank' "High yank
Plug 'rking/ag.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'kevinhwang91/rnvimr'
"Plug 'mhinz/vim-startify'            "vim欢迎界面
Plug 'hardcoreplayers/dashboard-nvim'

"Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"C++ stl
Plug 'octol/vim-cpp-enhanced-highlight'
"c++ QT
"Plug 'vim-scripts/OmniCppComplete'
"autoformat
Plug 'Chiel92/vim-autoformat'
"Floaterm
Plug 'voldikss/vim-floaterm'
"color
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
"line
Plug 'mg979/vim-xtabline'
call plug#end()

"Floaterm
let g:floaterm_keymap_toggle = '<LEADER>ff'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'

let g:floaterm_wintype='floating'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=1
let g:floaterm_autoclose=1
hi FloatermBorder guibg=orange guifg=cyan

"autoformau
let g:python3_host_prog = '/usr/lib/python3.8'
noremap <LEADER>f :Autoformat<CR>

"git
let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_removed_above_and_below = ''
let g:gitgutter_sign_modified_removed = ''

"auto size
lua << EOF
local function ignore_by_buftype(types)
local buftype = vim.api.nvim_buf_get_option(0, 'buftype')
for _, type in pairs(types) do
    if type == buftype then
        return 1
    end
end
end
local golden_size = require("golden_size")
-- set the callbacks, preserve the defaults
golden_size.set_ignore_callbacks({
{ ignore_by_buftype, {'Undotree','quickfix', 'nerdtree','current','Vista'} },
{ golden_size.ignore_float_windows }, -- default one, ignore float windows
{ golden_size.ignore_by_window_flag }, -- default one, ignore windows with w:ignore_gold_size=1
})
EOF

"sudo nvim
let g:suda_smart_edit = 1
"""
autocmd VimEnter * RainbowParenthesesToggle

"ranger nvim
let g:rnvimr_ex_enable   = 1
let g:rnvimr_pick_enable = 1
nnoremap <silent> R :RnvimrSync<CR>:RnvimrToggle<CR><C-\><C-n>:RnvimrResize 0<CR>
let g:rnvimr_layout = { 'relative': 'editor',
            \ 'width': &columns,
            \ 'height': &lines,
            \ 'col': 0,
            \ 'row': 0,
            \ 'style': 'minimal' }
let g:rnvimr_presets = [{'width': 0.7, 'height': 0.7}]
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



"coc
set ambiwidth=single
"autocmd CursorHold * silent call CocActionAsync('highlight')
"nmap <expr> <silent> <c-d> <SID>select_cur()
"nmap <LEADER>nm <PLUG>(coc-rename)
set updatetime=3
set signcolumn=yes

"function! s:select_cur()
    "if !get(g:,'coc_cursors_activated',0)
        "return "\<PLUG>(coc-cursors-word)"
    "endif
    "return "*\<PLUG>(coc-cursors-word):nohlsearch\<CR>"
"endfunc

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction
inoremap <silent><expr> <Tab>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<Tab>" :
            \ coc#refresh()

"Tlist
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Compact_Format=1

set tags=tags;
set autochdir

"map tree :NERDTreeToggle<CR>
"let NERDTreeMinimalUI=1
"let NERDTreeChDirMode=2
""autocmd bufenter * if (winnr("$")) == 1 && exists("b:NERDTreeType" &&b:NERDTreeType == "primary") | q | endif
"let NERDTreeMapOpenExpl = ""
"let NERDTreeMapUpdir = ""
"let NERDTreeMapUpdirKeepOpen = "l"
"let NERDTreeMapOpenSplit = ""
"let NERDTreeOpenVSplit = ""
"let NERDTreeMapActivateNode = "i"
"let NERDTreeMapOpenInTab = "o"
"let NERDTreeMapPreview = ""
"let NERDTreeMapCloseDir = "n"
"let NERDTreeMapChangeRoot = "y"
"let g:NERDTree_titlle="[NERDTree]"

"function! NERDTree_Start()
"exe 'NERDTree'
"endfunction
"function! NERDTree_IsValid()
"return 1
"endfunction


"map <LEADER>t :TagbarOpenAutoClose<CR>

"let g:NERDTree_title="[NERDTree]"
"let g:winManagerWindowLayout="NERDTree|TagList"
"let g:winManagerWidth=30

"nmap nm  :WMToggle<CR><LEADER>l:q!<CR>

"let g:AutoOpenWinManager=1



let g:space_vim_transp_bg = 1

""状态栏
"let g:airline_theme='base16_google'
let g:airline_theme = 'onedark'
let g:lightline = {
            \ 'colorscheme' : 'onedark',
            \ }
"let g:lightline = {
            "\     'active': {
            "\         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
            "\         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
            "\     }
            "\ }


" ==
" == NERDTree-git
" ==
"let g:NERDTreeIndicatorMapCustom = {
            "\ "Modified"  : "✹",
            "\ "Staged"    : "✚",
            "\ "Untracked" : "✭",
            "\ "Renamed"   : "➜",
            "\ "Unmerged"  : "═",
            "\ "Deleted"   : "✖",
            "\ "Dirty"     : "✗",
            "\ "Clean"     : "✔︎",
            "\ "Unknown"   : "?"
            "\ }

" ===
" === NCM2
" ===
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>": "\<CR>")
"autocmd BufEnter * call ncm2#enable_for_buffer()
"set completeopt=noinsert,menuone,noselect
"let g:ncm2#matcher = "substrfuzzy"
"let g:ncm2_jedi#python_version = 3
"let g:ncm2#match_highlight = 'sans-serif'
"set shortmess+=c
"set notimeout


" ===
" === MarkdownPreview
" ===
"let g:mkdp_auto_start = 1
"let g:mkdp_auto_close = 1
"let g:mkdp_refresh_slow = 0
"let g:mkdp_command_for_global = 0
"let g:mkdp_open_to_the_world = 0
"let g:mkdp_open_ip = ''
"let g:mkdp_browser = 'firefox'
"let g:mkdp_echo_preview_url = 0
"let g:mkdp_browserfunc = ''
"let g:mkdp_preview_options = {
            "\ 'mkit': {},
            "\ 'katex': {},
            "\ 'uml': {},
            "\ 'maid': {},
            "\ 'disable_sync_scroll': 0,
            "\ 'sync_scroll_type': 'middle',
            "\ 'hide_yaml_meta': 1
            "\ }
"let g:mkdp_markdown_css = ''
"let g:mkdp_highlight_css = ''
"let g:mkdp_port = ''
"let g:mkdp_page_title = '「${name}」'

" ===
" === Python-syntax
" ===
" let g:python_highlight_all = 1
" let g:python_slow_sync = 0

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
"let g:undotree_DiffAutoOpen = 0
"map B :UndotreeToggle<CR>

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




"vim欢迎界面
""Startify
"let g:startify_lists = [
            "\ { 'type': 'files',     'header': ['   MRU']            },
            "\ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
            "\ { 'type': 'commands',  'header': ['   Commands']       },
            "\ ]

"Dashboard设置
let g:dashboard_custom_header = [
            \ '',
            \'               _____                    _____                   _______                   _____                    _____                    _____            ',
            \'              /\    \                  /\    \                 /::\    \                 /\    \                  /\    \                  /\    \           ',
            \'             /::\____\                /::\    \               /::::\    \               /::\____\                /::\    \                /::\____\          ',
            \'            /::::|   |               /::::\    \             /::::::\    \             /:::/    /                \:::\    \              /::::|   |          ',
            \'           /:::::|   |              /::::::\    \           /::::::::\    \           /:::/    /                  \:::\    \            /:::::|   |          ',
            \'          /::::::|   |             /:::/\:::\    \         /:::/~~\:::\    \         /:::/    /                    \:::\    \          /::::::|   |          ',
            \'         /:::/|::|   |            /:::/__\:::\    \       /:::/    \:::\    \       /:::/____/                      \:::\    \        /:::/|::|   |          ',
            \'        /:::/ |::|   |           /::::\   \:::\    \     /:::/    / \:::\    \      |::|    |                       /::::\    \      /:::/ |::|   |          ',
            \'       /:::/  |::|   | _____    /::::::\   \:::\    \   /:::/____/   \:::\____\     |::|    |     _____    ____    /::::::\    \    /:::/  |::|___|______    ',
            \'      /:::/   |::|   |/\    \  /:::/\:::\   \:::\    \ |:::|    |     |:::|    |    |::|    |    /\    \  /\   \  /:::/\:::\    \  /:::/   |::::::::\    \   ',
            \'     /:: /    |::|   /::\____\/:::/__\:::\   \:::\____\|:::|____|     |:::|    |    |::|    |   /::\____\/::\   \/:::/  \:::\____\/:::/    |:::::::::\____\  ',
            \'     \::/    /|::|  /:::/    /\:::\   \:::\   \::/    / \:::\    \   /:::/    /     |::|    |  /:::/    /\:::\  /:::/    \::/    /\::/    / ~~~~~/:::/    /  ',
            \'      \/____/ |::| /:::/    /  \:::\   \:::\   \/____/   \:::\    \ /:::/    /      |::|    | /:::/    /  \:::\/:::/    / \/____/  \/____/      /:::/    /   ',
            \'              |::|/:::/    /    \:::\   \:::\    \        \:::\    /:::/    /       |::|____|/:::/    /    \::::::/    /                       /:::/    /    ',
            \'              |::::::/    /      \:::\   \:::\____\        \:::\__/:::/    /        |:::::::::::/    /      \::::/____/                       /:::/    /     ',
            \'              |:::::/    /        \:::\   \::/    /         \::::::::/    /         \::::::::::/____/        \:::\    \                      /:::/    /      ',
            \'              |::::/    /          \:::\   \/____/           \::::::/    /           ~~~~~~~~~~               \:::\    \                    /:::/    /       ',
            \'              /:::/    /            \:::\    \                \::::/    /                                      \:::\    \                  /:::/    /        ',
            \'             /:::/    /              \:::\____\                \::/____/                                        \:::\____\                /:::/    /         ',
            \'             \::/    /                \::/    /                 ~~                                               \::/    /                \::/    /          ',
            \'              \/____/                  \/____/                                                                    \/____/                  \/____/           ',
            \ '                                                                              [JY]',
            \ '',
            \ ]


""html
"let g:user_emmet_install_global = 0
"autocmd FileType html,css,php EmmetInstall
"let g:user_emmet_leader_key=','

let g:python_host_prog  = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'
let g:LanguageClient_serverCommands = {
            \ 'python':['/usr/bin/pyls'],
            \}
