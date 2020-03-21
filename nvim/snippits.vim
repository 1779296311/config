"autocmd Filetype markdown map <leader>w yiWi[<esc>Ea](<esc>pa)
autocmd Filetype markdown inoremap ;f <Esc>/<??><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap ;q **   <??><Esc>F*i
autocmd Filetype markdown inoremap ;w **** <??><Esc>F*hi
autocmd Filetype markdown inoremap ;e ****** <??><Esc>F*hhi
autocmd Filetype markdown inoremap ;a `` <??><Esc>F`i
autocmd Filetype markdown inoremap ;s ```<Enter><??><Enter>```<Enter><Enter><??><Esc>
autocmd Filetype markdown inoremap ;[ <??>[^<??>]  <Enter>[^<??>]:<Esc>
autocmd Filetype markdown inoremap ;d ~~~~ <??><Esc>F~hi
autocmd Filetype markdown inoremap ;u <u></u><Esc>F<i
autocmd Filetype markdown inoremap ;l ---<Enter><Enter> 
autocmd Filetype markdown inoremap ;h ====<Space><??><Esc>
autocmd Filetype markdown inoremap ;> -> <??> <-<Esc>
autocmd Filetype markdown inoremap ;p ![](<??>)<Esc>
autocmd Filetype markdown inoremap ;i  [](<??>)<Esc>
autocmd Filetype markdown inoremap ;1 #<Space><Enter><??><Esc>kA
autocmd Filetype markdown inoremap ;2 ##<Space><Enter><??><Esc>kA
autocmd Filetype markdown inoremap ;3 ###<Space><Enter><??><Esc>kA
autocmd Filetype markdown inoremap ;4 ####<Space><Enter><??><Esc>kA
autocmd Filetype markdown inoremap ;t \|<??>\|<??>\|<??>\|<Enter>\|:----:\|:----:\|:----:\|<Enter>\|<??>\|<??>\|<??>\|<Enter>\|<??>\|<??>\|<??>\|<Enter><Esc>
autocmd Filetype markdown inoremap ;; $\$<Esc>F$la


