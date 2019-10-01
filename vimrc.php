" set indenting as in html file, but colors like in php
au BufReadPost *.php set filetype=html
au BufReadPost *.php set syntax=php

" add ending of html tag shortcut
imap <silent> <C-t> </<C-X><C-O><Esc>F<i
