# Installation

    git clone https://github.com/galanonym/.vim.git
    :PlugInstall (on first vim run)

## VIM training / shortcut sheet

Special (non default bindings)

    jj - same as ESC
    <Space> - easymotion jump
    <F2> - open Netrw
    <C-p> - list & jump buffers, % is current file, # is last file, write some chars and use <Tab>

Find

    :find xxx - fuzzy find a file where xxx is part of the name
    (wildmenu) - when wildmenu opens use <Tab> and <S-Tab> to choose
    (wildmenu) <Down> - use it to drill down through directories

Autocomplete

    <C-n> - open autocomplete box, then press again to next suggestion
    <C-p> - autocomplete box, previous suggestion
    <C-e> - autocomplete box, exit smoothly
    <C-x><C-f> - try to autocomplete a file path

Buffers (open files)

    <C-6> - jump between last two buffers
    :bd - delete/close current buffer
    ]b - next buffer
    [b - prev buffer

Argument List
    
    :ar - show argument list
    :ar vimrc readme.md - add files to argument list, use <Tab> to autofill
    ]a - next file in argument list
    [a - prev file in argument list

Netrw (inside)

    <CR> - open directory / file
    :bd - close file exprorer
    gn - make directory under cursor top of tree
    % - create new file
    d - create new directory
    D - delete file/directory under cursor (remember to delete buffer later)
    R - rename or move file under cursor

    Copy:
    jkmf - Move cursor to a file in target directory
    mt - mark target directory (Copy/Move Tgt line shows)
    mf - mark file that we want to copy (becomes bold)
    mc - copy marked file

Sensible

    <C-l> - clear highlighted search results

Unimpaired

    [<Space> - new line over (can add count before)
    ]<Space> - new line under
    
    [e - move line up
    ]e - move line down

Surround
    
    ysiw] - you [surround] around inside of word
    ysiw[ - you [ surround ] around inside of word
    ysiw<p> - you <p>surround</p> around inside of word
    yss[ - you surround whole sentence with [

    (visual) S( - surround with (

    cs[' - change surrounding from [ to '
    cs[<p> - change surroundig from [ to <p></p>
    
    dst - delete surrounding <tag>
    ds[ - delete surrounding [

Commentary

    gcc - comment out current line

Movement

    w - move forward one word
    3w - move forward three words
    b - move backword one word
    e - move to end of the next word
    ge - move to end of previous word

    W - move forward one WORD (sequence of characters)
    B - backword one WORD (sequence of characters)

    0 - move to the beginning of the line
    $ - move to the end of the line
    ^ - move to first non whitespace character
    
    { or } - jump to the prev/next paragraph
    ( or ) - jump to the prev/next sentence
    % or <S-5> - jump between matching brackets (when inside brackets, jump to first bracket)
   
    gg - jump to top of file
    G - jump to bottom of file
    32G - jump to line 32

    <C-o> - jump back to where cursor has been
    <C-i> - jump forward to where the cursor has been

    g; - jump back to where last change occured
    g, - jump forward to where last change occured

    gk - move up a display line
    gj - move down a display line
    g0 - move to start of display line
    g$ - move to end of display line

Screen Movement

    zz - scroll current line on screen middle
    vat o - select a HTML tag, then jump to matching opening / closing tag

Inserts

    I - inserts text at the start of the line (first nonspace char)
    A - append at the end of the line
    o - new line and edit
    O - new line above and edit
    ea - append at the end of current word
    gi - insert text at last insert location

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

Yank/Put (Copy/Paste)

    yy - yank line (copy)
    yw - yank a word
    p - paste after (paste above on line)
    P - paste before (paste above on line)
    "+y - yank selection to system clipboard
    "+p - paste text from system clipboard
    xp - move char under cursor one forward
    (visual) p - paste and replace selected text
    (insert) <C-r>" - paste from unnamed register inside insert mode
    gp - paste after and place cursor after inserted text
    gP - paste before and place cursor after inserted text

Join

    J - join two lines

Line Search

    fx - move forward to top of first 'x' on line
    3fx - move forward to top of third 'x' on line
    ; - repeat last move
    , - repeat last move backwords
    tx - move forward till first 'x' on line (stop one char before)

    Fx - move backward to top of first 'x' on line
    Tx - move backward till first 'x' on line (stop one char before)

Search

    /something - search for "something" string
    n - cursor to next match
    N - cursor to previous match
    ?something - search upwards for "something" string
    * - find next word that is same as word on cursor (fast search)
    # - find prev word that is same as word on cursor (fast search)
    /<Up> or /<Down> - scroll through search history

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

Visual Block

    <C-v> - toggle visual block mode, you can select line downwards
    $ - select to the end of every line
    r - replace a character on every selected character
    c - change text on every selected line
    A - add text at the ends of selection 
    I - add text at the beginnings of selection

Indent

    << - indent line one tab to left
    >> - indent line one tab to right
    >3> - indent 3 lines in the same time
    < or > - (in visual-line)

Split window

    <C-w>v - new vertical split
    <C-w>s - new horizontal split (use <Tab> to find file)
    <C-w>w  - cycle bettween two splits
    <C-w>l - jump to split on right (works with l, h, j, k)
    <C-w>c - close split

Other

    . - repets your last command, user it on the same line or another one.
    <C-[> - same as esc key (useful when escaping from command line or multiple cursors)
    gf - jump to filename under cursor

Folding

    zo - open fold
    zc - close fold

Registers

    "ayy - yank text to register a
    "ap - paste from register a
    "Ayy - yank text to !append! register A
    "Ap - paste text from !append! register A
    "0p - paste from yank register (last yanked line)
    :reg - show all registers
    :reg a - show "a" register
    ": - last vim command line command
    ". - last inserted text
    @: - execute last command (normal mode)

Marks

    ma - set mark "a" on cursor position
    `a - jump to cursor position marked with "a"
    mA - set global "A" mark on cursor position (persisted between sessions)
    `A - jump to global cursor position (in other buffer) marked with "A"
    `. - jump to cursor position where last change occured
    `` - jump back to cursor position in current buffer where jumped from

Macros

    qa - begin macro recording to register "a"
    (recording) q - stop recording
    @a - execute macro from register a
    @@ - execute most recent macro
    4@a - execute macro a four time (when a motion fails, macro execution will stop)

Execute commands

    :! - execute a command in command line
    :sh - fork new shell in pwd (you can $exit from it)
    :w !sudo tee % - write readonly file with sudo, (press l to load back file), 
      write to stdout, tee (unix T-pipe) it from :w to % (path of current buffer)
    :so $MYVIMRC - reload config without exiting vim
    :set syntax=javascript - force usage of this syntax on open file
    :<Up> or :<Down> - scroll through command history
    :pwd - print working directory

Help

    :h - open help
    <C-]> - go to tag file in help
    <C-t> - go back in help

Range Symbols in Ex mode

    :1,3 - range between row 1 to row 3
    . - line where cursor is placed
    'm - line containing mark m
    $ - last line of file
    % - entire file, shortcut for :1,$, no need for ,
    '< - start of visual selection
    '> - end of visual selection
    :.-3,.+3 - simple aritmethics works, current line +-3 lines
    /pattern/ - specify range by pattern

Ex mode commands

    :1,3p - print lines in range
    :1,3s/Foo/Bar/g - substitute Foo for Bar on every line (g - replace all words in every line)
    :1,3t. - copy range TO line 3 below current line
    :1,3m. - move range to line 3 below current line
    :1,3normal A; - appends ; to the end of every line (normal runs a normal command)
    :1,3normal i// - prepends // to every line
    :1,3normal . - repeat last line (dot) operation on lines in range
    :'<,'>normal @q - repeat makro starting at start of a line on lines in range
    (after selecting in visual selection press : to get :'<,'>)

Tab (Layout) Pages

    :tabe {filename} - open file in a new tab
    gt - move to next tab
    gT - move to prev tab
    1gt - move to first tab etc.
    
Command-line window

    q: - command-line window, edit ex-command history
    q/ - command-line window, edit search history
    <CR> - command-line window, execute command / search
