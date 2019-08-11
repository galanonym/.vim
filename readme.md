Installation

    git clone https://github.com/galanonym/.vim.git
    :PlugInstall (on first vim run)

VIM training/shortcut sheet
Train fast throu these to warmup in vim

Special (non default bindings)

    jj - same as ESC
    <Space> - easymotion jump
    <F2> - open Netrw
    <C-p> - list & jump buffers

Find

    :find xxx - fuzzy find a file where xxx is part of the name
    (wildmenu) - when wildmenu opens use <Tab> and <S-Tab> to choose

Autocomplete

    <C-n> - open autocomplete box, then press again to next suggestion
    <C-p> - autocomplete box, previous suggestion
    <C-e> - autocomplete box, exit smoothly
    <C-x><C-f> - try to autocomplete a file path

Buffers

    <C-6> - jump between last two buffers
    :bd - delete/close current buffer
    ]b - next buffer
    [b - prev buffer

Netrw (inside)

    <CR> - open directory / file
    :bd - close file exprorer
    gn - make directory under cursor top of tree
    R - rename or move file under cursor
    D - delete file under cursor
    % - create new file

Sensible

    <C-l> - clear highlighted search results

Unimpaired

    [<Space> - new line over (can add count before)
    ]<Space> - new line under
    
    [e - move line up
    ]e - move line down

Commentary

    gcc - comment out current line

Movement

    w - move cursor forward one word
    W - jump to the next meaningful code word (jump through paranteses)
    3w - forward three words
    b - backword one word
    e - to the end of the next word
    ge - to the end of previous word

    0 - go to the beginning of the line
    $ - go to the end of the line
    ^ - first non whitespace character
    
    { or } - move to the prev/next paragraph
    ( or ) - move to the prev/next sentence
    % - bounce between matching brackets
   
    gg - top of file
    G - bottom of file
    32G - jump to line 32

Screen Movement

    zz - scroll current line on screen middle

Inserts

    I - inserts text at the start of the line (first nonspace char)
    A - append at the end of the line
    o - new line and edit
    O - new line above and edit

Deletion

    d$ - D - delete everything to the end of the line
    d2w - delete-two-words, operator-count-motion
    daw - delete a word, does not matter where cursor is, on whitespace deletes next word
    dd - delete a whole line
    0D - delete content of a line
    di( - delete inside paranteses (test) {test} <test> 'test' "test"
    da( - delete a parantese (with all inside) {test} <test> 'test' "test"
    df, - delete forward to comma and comma (test, test)
    dt, - delete til comma but not comma (test, test)
    dap - delete a paragraph (lines not seperated by empty line)
    dit - delete everything between a html tag (<a>test</a>)
    dat - delete a html tag and everything inside (<a>test</a>)
    <C-w> - delete last word in insert mode

Change

    4s - change next 4 characters
    cw - change word
    3cw - change three words
    cc - change a line
    cit - change between curren html tags (<a>test</a>)
    C - change from cursor to end of line
    s - change letter
    S - change from beginning of a line
    ~ - change selection case between lower/upper

Replace

    r - replace one char
    R - replace mode, typeover
    <backspace> - restore original character from before typeover
    :5,12s/foo/bar/g - replace all foo with bar between lines 5 and 12

Copy/Paste

    yy - yank line (copy)
    yw - yank a word
    p - paste after (paste above on line)
    P - paste before (paste above on line)
    "+y - yank selection to clipboard

Join

    J - join two lines

Line Search

    fN - jump forward to first 'N' in the current line
    3fN - jump forward to third 'N' in the current line
    ; - repeat last jump
    , - repeat last jump backwords
    t) - jump forward to first ')' in the current line, stop one char before ')'

Search

    /something - use it to search for "something" string
    n - cursor to next match
    N - cursor to previous match
    ? - start searching up
    * - find next word that is same as word on cursor (fast search)
    # - find prev word that is same as word on cursor (fast search)

Undo/Repeat

    u - undo
    U - undo all changes on this line
    <C-r> - redo 

Visual

    v - enter/exit visual mode
    V - toggle visual line mode
    o - toggle cursor position (visual mode)
    = - automatically repair/filter indent on selection
    gv - reselect last visual selection

Indent

    << - indent line one tab to left
    >> - indent line one tab to right
    >3> - indent 3 lines in the same time
    < or > - (in visual-line)

Split window

    :vsp - new vertical split
    :sp - new horizontal split
    <C-w> c - close split
    <C-w> l - jump to split on right
        l, h, j, k

Other

    . - repets your last command, user it on the same line or another one.
    <C-[> - same as esc key (useful when escaping from command line or multiple cursors)

Folding

    zo - open fold
    zc - close fold

Registers

    "ayy - yank text to register a
    "ap - paste from register a
    "Ayy - yank text to !append! register A
    "Ap - paste text from !append! register A
    "0p - paste from last yank command (delete dont count)
    :registers - show all 
    ": - last vim command line command
    @: - execute last command (normal mode)

Marks

    ma - set mark a on current cursor location
    'a - jump to line marked with a
    `a - jump to cursor position marked with a
    `. - jump to cursor position where last change occured
    `` - jump back to cursor position in current buffer where jumped from

Macros

    qa - begin macro recording to register a
    q - stop recording
    @a - execute macro from register a
    4@a - execute macro a four time

Execute commands

    :! - execute a command in command line
    :sh - fork new shell in pwd (you can $exit from it)
    :w !sudo tee % - write file without sudo (ignore warning)
    :so $MYVIMRC - reload config without exiting vim

Help

    :h - open help
    <C-]> - go to tag file in help
    <C-T> - go back in help

Tips & Tricks

    after selecting in visual selection press : to get
    :'<,'> - means "For each line in the visual selection execute:"
    :'<,'>normal A; - appends ; to the end of every line (normal runs a normal command)
    :'<,'>normal i// - prepends // to every line
