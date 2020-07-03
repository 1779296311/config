let s:cpo_save=&cpo
set cpo&vim
cmap <Plug>(ncm2_c_e) <Nop>
cmap <Plug>(ncm2_manual_trigger) <Nop>
cmap <Plug>(ncm2_auto_trigger) <Nop>
cmap <Plug>(ncm2_skip_auto_trigger) <Nop>
inoremap <Plug>(ncm2_c_e) 
inoremap <silent> <Plug>(ncm2_manual_trigger) =ncm2#manual_trigger()
inoremap <silent> <Plug>(ncm2_skip_auto_trigger) =ncm2#skip_auto_trigger()
inoremap <silent> <Plug>(ncm2_auto_trigger) =ncm2#auto_trigger()
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', "insert")
inoremap <silent> <SNR>50_AutoPairsReturn =AutoPairsReturn()
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\<S-Tab>"
snoremap <silent>  "_c
xnoremap <silent>  :call multiple_cursors#new("v", 0)
nnoremap <silent>  :call multiple_cursors#new("n", 1)
map  <Plug>(wildfire-fuel)
map  :CtrlP
snoremap  "_c
map  
nmap  ca <Plug>NERDCommenterAltDelims
xmap  cu <Plug>NERDCommenterUncomment
nmap  cu <Plug>NERDCommenterUncomment
xmap  cb <Plug>NERDCommenterAlignBoth
nmap  cb <Plug>NERDCommenterAlignBoth
xmap  cl <Plug>NERDCommenterAlignLeft
nmap  cl <Plug>NERDCommenterAlignLeft
nmap  cA <Plug>NERDCommenterAppend
xmap  cy <Plug>NERDCommenterYank
nmap  cy <Plug>NERDCommenterYank
xmap  cs <Plug>NERDCommenterSexy
xmap  ci <Plug>NERDCommenterInvert
nmap  ci <Plug>NERDCommenterInvert
nmap  c$ <Plug>NERDCommenterToEOL
xmap  cn <Plug>NERDCommenterNested
nmap  cn <Plug>NERDCommenterNested
xmap  cm <Plug>NERDCommenterMinimal
nmap  cm <Plug>NERDCommenterMinimal
xmap  c  <Plug>NERDCommenterToggle
nmap  c  <Plug>NERDCommenterToggle
xmap  cc <Plug>NERDCommenterComment
nmap  cc <Plug>NERDCommenterComment
snoremap <silent>  cs "ky:ThesaurusQueryReplace k
nmap  cs <Plug>NERDCommenterSexy
map  n :call Calc()
nnoremap <silent>  f :F  %<Left><Left>
map  gy :Goyo
map  mm :TableModeToggle
map  t :TagbarOpenAutoClose
nmap  w :w!
nmap  q :q!
noremap  = :Tabularize /=
map    /<??>:nohlsearchc4l
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
noremap 9 $
xnoremap <silent> ;; :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> ;; :call UltiSnips#ExpandSnippetOrJump()
noremap ; :
noremap H I
noremap I K
noremap J H
noremap K J
map L :UndotreeToggle
noremap Q V
map RR :call CompileBuildrrr()
map R :call CompileRunGcc()
xmap S <Plug>VSurround
noremap T R
noremap U Y
noremap V Q
noremap Y U
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
nmap [C 9999[c
nmap [c <Plug>(signify-prev-hunk)
vnoremap <silent> \cs "ky:ThesaurusQueryReplace k
nnoremap <silent> \cs :ThesaurusQueryReplaceCurrentWord
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
nmap ]C 9999]c
nmap ]c <Plug>(signify-next-hunk)
xmap a% <Plug>(MatchitVisualTextObject)
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap c< ch<
nmap c{ ch{
nmap c" ch"
nmap c' ch'
nmap c( ch(
nmap c[ ch[
nmap ds <Plug>Dsurround
nnoremap <silent> dm :call signature#utils#Remove(v:count)
nnoremap <silent> dm? :call signature#marker#Purge()
nnoremap <silent> dm/ :call signature#mark#Purge("all")
nnoremap <silent> dm- :call signature#mark#Purge("line")
nmap d< dh<
nmap d{ dh{
nmap d" dh"
nmap d' dh'
nmap d( dh(
nmap d[ dh[
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
xmap gS <Plug>VgSurround
xnoremap <silent> g<M-k> :call multiple_cursors#select_all("v", 0)
nnoremap <silent> g<M-k> :call multiple_cursors#select_all("n", 0)
xnoremap <silent> g :call multiple_cursors#new("v", 0)
nnoremap <silent> g :call multiple_cursors#new("n", 0)
noremap h i
noremap i k
noremap j h
noremap k j
nnoremap <silent> m? :call signature#marker#List(v:count, 0)
nnoremap <silent> m/ :call signature#mark#List(0, 0)
nnoremap <silent> mp :call signature#mark#Goto("prev", "spot", "pos")
nnoremap <silent> mn :call signature#mark#Goto("next", "spot", "pos")
nnoremap <silent> m  :call signature#mark#Goto("next", "line", "alpha")
nnoremap <silent> m. :call signature#mark#ToggleAtLine()
nnoremap <silent> m, :call signature#mark#Toggle("next")
nnoremap <silent> m :call signature#utils#Input()
nmap nm :WMToggle
nmap q< qh<
nmap q{ qh{
nmap q" qh"
nmap q' qh'
nmap q( qh(
nmap q[ qh[
noremap q v
noremap r t
map sn :set nosplitright:vsplit:set splitright
map tree :NERDTreeToggle
noremap t r
nmap u{ uh{
nmap u< uh<
nmap u" uh"
nmap u' uh'
nmap u( uh(
nmap u[ uh[
noremap uu yy
noremap u y
noremap v q
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
noremap yy uu
noremap y u
map zn :set nosplitbelow:split:set splitright
tmap <Plug>(ncm2_c_e) <Nop>
map <Plug>(ncm2_c_e) <Nop>
tmap <Plug>(ncm2_manual_trigger) <Nop>
map <Plug>(ncm2_manual_trigger) <Nop>
tmap <Plug>(ncm2_auto_trigger) <Nop>
map <Plug>(ncm2_auto_trigger) <Nop>
tmap <Plug>(ncm2_skip_auto_trigger) <Nop>
map <Plug>(ncm2_skip_auto_trigger) <Nop>
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
vmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
vnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
vnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
vnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
vnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v')m'gv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
snoremap <silent> <Del> "_c
snoremap <silent> <BS> "_c
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
nnoremap <silent> <Plug>(neoterm-repl-send-line) :set opfunc=neoterm#repl#opfunc|exe 'norm! 'v:count1.'g@_'
xnoremap <silent> <Plug>(neoterm-repl-send) :call neoterm#repl#selection()
nnoremap <silent> <Plug>(neoterm-repl-send) :set opfunc=neoterm#repl#opfuncg@
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
xmap <BS> <Plug>(wildfire-water)
onoremap <silent> <Plug>(wildfire-quick-select) :call wildfire#QuickSelect(['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])
nnoremap <silent> <Plug>(wildfire-quick-select) :call wildfire#QuickSelect(['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])
vnoremap <silent> <Plug>(wildfire-fuel) :call wildfire#Fuel(v:count1)
onoremap <silent> <Plug>(wildfire-fuel) :call wildfire#Start(v:count1, ['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])
nnoremap <silent> <Plug>(wildfire-fuel) :call wildfire#Start(v:count1, ['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])
vnoremap <silent> <Plug>(wildfire-water) :call wildfire#Water(v:count1)
nnoremap <silent> <Plug>SurroundRepeat .
xnoremap <silent> <M-k> :call multiple_cursors#select_all("v", 0)
nnoremap <silent> <M-k> :call multiple_cursors#select_all("n", 1)
xnoremap <silent> <Plug>(signify-motion-outer-visual) :call sy#util#hunk_text_object(1)
onoremap <silent> <Plug>(signify-motion-outer-pending) :call sy#util#hunk_text_object(1)
xnoremap <silent> <Plug>(signify-motion-inner-visual) :call sy#util#hunk_text_object(0)
onoremap <silent> <Plug>(signify-motion-inner-pending) :call sy#util#hunk_text_object(0)
nnoremap <silent> <expr> <Plug>(signify-prev-hunk) &diff ? '[c' : ":\call sy#jump#prev_hunk(v:count1)\"
nnoremap <silent> <expr> <Plug>(signify-next-hunk) &diff ? ']c' : ":\call sy#jump#next_hunk(v:count1)\"
nnoremap <silent> <Plug>(conflict-marker-prev-hunk) :ConflictMarkerPrevHunk
nnoremap <silent> <Plug>(conflict-marker-next-hunk) :ConflictMarkerNextHunk
nnoremap <silent> <Plug>(conflict-marker-none) :ConflictMarkerNone
nnoremap <silent> <Plug>(conflict-marker-both) :ConflictMarkerBoth
nnoremap <silent> <Plug>(conflict-marker-ourselves) :ConflictMarkerOurselves
nnoremap <silent> <Plug>(conflict-marker-themselves) :ConflictMarkerThemselves
nnoremap <silent> <Plug>(startify-open-buffers) :call startify#open_buffers()
nnoremap <Plug>CtrlSFQuickfixPrompt :CtrlSFQuickfix 
nnoremap <Plug>CtrlSFPrompt :CtrlSF 
inoremap  
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <expr> 	 pumvisible() ? "\" : "\	"
inoremap <expr>  (pumvisible() ? "\\": "\")
imap  <Plug>Isurround
inoremap <silent> ;; =UltiSnips#ExpandSnippetOrJump()
iabbr switch switch(<??>){case <??>:<??>;break;default:break;}
iabbr structs struct <??>{<??>;};
iabbr try try{<??>}catch(<??>){<??>}
iabbr classs class <??>{<??>:};
iabbr while while(<??>){<??>;}
iabbr for for(<??>; <??>; <??>){<??>;}
iabbr if if(<??>){<??>;}
iabbr syso int main(int argc,const char *argv[]){<??>;return 0;}
let &cpo=s:cpo_save
unlet s:cpo_save
set ambiwidth=double
set autochdir
set clipboard=unnamedplus
set completefunc=thesaurus_query#auto_complete_integrate
set completeopt=noinsert,menuone,noselect
set expandtab
set formatoptions=jcroql
set helplang=cn
set ignorecase
set iskeyword=@,48-57,_,192-255,#,-,.
set mouse=a
set runtimepath=~/.config/nvim,~/.config/nvim/plugged/vim-airline/,~/.config/nvim/plugged/vim-airline-themes/,~/.config/nvim/plugged/vim-bufferline/,~/.config/nvim/plugged/space-vim-theme/,~/.config/nvim/plugged/nerdtree-git-plugin/,~/.config/nvim/plugged/ctrlsf.vim/,~/.config/nvim/plugged/taglist.vim/,~/.config/nvim/plugged/jedi-vim/,~/.config/nvim/plugged/ncm2/,~/.config/nvim/plugged/ncm2-nvim/,~/.config/nvim/plugged/ncm2-jedi/,~/.config/nvim/plugged/ncm2-yarp/,~/.config/nvim/plugged/nvim-yarp/,~/.config/nvim/plugged/ncm2-github/,~/.config/nvim/plugged/ncm2-bufword/,~/.config/nvim/plugged/ncm2-clang/,~/.config/nvim/plugged/ncm2-pyclang/,~/.config/nvim/plugged/ncm2-path/,~/.config/nvim/plugged/ncm2-match-highlight/,~/.config/nvim/plugged/ncm2-markdown-subscope/,~/.config/nvim/plugged/leetcode.vim/,~/.config/nvim/plugged/LanguageClient-neovim/,~/.config/nvim/plugged/fzf/,~/.config/nvim/plugged/undotree/,~/.config/nvim/plugged/winmanager/,~/.config/nvim/plugged/vim-startify/,~/.config/nvim/plugged/conflict-marker.vim/,~/.config/nvim/plugged/vim-fugitive/,~/.config/nvim/plugged/vim-signify/,~/.config/nvim/plugged/vim-gitignore/,~/.config/nvim/plugged/vim-json/,~/.config/nvim/plugged/vim-css3-syntax/,~/.config/nvim/plugged/vim-coloresque/,~/.config/nvim/plugged/vim-javascript/,~/.config/nvim/plugged/emmet-vim/,~/.config/nvim/plugged/indentpython.vim/,~/.config/nvim/plugged/semshi/,~/.config/nvim/plugged/vim-wordy/,~/.config/nvim/plugged/thesaurus_query.vim/,~/.config/nvim/plugged/vim-signature/,~/.config/nvim/plugged/auto-pairs/,~/.config/nvim/plugged/vim-multiple-cursors/,~/.config/nvim/plugged/goyo.vim/,~/.config/nvim/plugged/vim-surround/,~/.config/nvim/plugged/tabular/,~/.config/nvim/plugged/wildfire.vim/,~/.config/nvim/plugged/nerdcommenter/,~/.config/nvim/plugged/far.vim/,~/.config/nvim/plugged/SimpylFold/,~/.config/nvim/plugged/neoterm/,~/.config/nvim/plugged/restore_view.vim/,~/.config/nvim/plugged/vim-addon-mw-utils/,~/.config/nvim/plugged/vim-textobj-user/,~/.config/nvim/plugged/ctags.vim/,~/.config/nvim/plugged/bufexplorer/,~/.config/nvim/plugged/ag.vim/,~/.config/nvim/plugged/ultisnips/,~/.config/nvim/plugged/vim-snippets/,~/.config/nvim/plugged/vim-cpp-enhanced-highlight/,/etc/xdg/nvim,~/.local/share/nvim/site,~/.local/share/flatpak/exports/share/nvim/site,/var/lib/flatpak/exports/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/share/nvim/runtime,/usr/share/nvim/runtime/pack/dist/opt/matchit,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/var/lib/flatpak/exports/share/nvim/site/after,~/.local/share/flatpak/exports/share/nvim/site/after,~/.local/share/nvim/site/after,/etc/xdg/nvim/after,~/.config/nvim/after,~/.config/nvim/plugged/ctrlsf.vim/after,~/.config/nvim/plugged/jedi-vim/after,~/.config/nvim/plugged/vim-css3-syntax/after,~/.config/nvim/plugged/vim-coloresque/after,~/.config/nvim/plugged/vim-javascript/after,~/.config/nvim/plugged/vim-signature/after,~/.config/nvim/plugged/tabular/after,~/.config/nvim/plugged/ultisnips/after,~/.config/nvim/plugged/vim-cpp-enhanced-highlight/after,/usr/share/vim/vimfiles
set scrolloff=5
set shiftwidth=4
set shortmess=filnxtToOFcI
set noshowmode
set smartcase
set softtabstop=4
set splitbelow
set splitright
set tabstop=4
set tags=tags;
set termguicolors
set notimeout
set ttimeoutlen=0
set viewoptions=cursor,folds,slash,unix
set window=36
" vim: set ft=vim :
