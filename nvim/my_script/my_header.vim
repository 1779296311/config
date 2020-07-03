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
   endif
endfunc
autocmd BufNewFile * normal G
