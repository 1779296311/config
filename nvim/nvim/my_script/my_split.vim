
function!  g:MY_split(SPLIT, ST_EN)

    let s       = getline(".")
    let black_n = indent(line("."))
    let L       = a:ST_EN.a:SPLIT.join(split(s),a:SPLIT.", ".a:SPLIT).a:SPLIT

    if  a:ST_EN == "{"
        let L = L."},"
    elseif a:ST_EN == "["
        let L = L."],"
    endif

    let head = ""
    while black_n > 1 
        let head     = head." "
        let black_n -= 1
    endwhile

    call setline(line("."),head.L)

endfunction


noremap <LEADER>'{ :call  MY_split("\'", "{")<CR>
noremap <LEADER>'[ :call  MY_split("\'", "[")<CR>
noremap <LEADER>"{ :call  MY_split("\"", "{")<CR>
noremap <LEADER>"[ :call  MY_split("\"", "[")<CR>

noremap <LEADER>{  :call  MY_split("", "{")<CR>
noremap <LEADER>[  :call  MY_split("", "[")<CR>
