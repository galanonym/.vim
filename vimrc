call plug#begin()
Plug 'gosukiwi/vim-atom-dark' "colorscheme
Plug 'tpope/vim-sensible' "sensible defaults
Plug 'tpope/vim-unimpaired' "use [ and ] commands
Plug 'tpope/vim-commentary' "use gcc to comment
Plug 'easymotion/vim-easymotion' "better line jumps
call plug#end()

"BASICS
set hidden "files will be hidden and not closed when buffer changes
set clipboard=unnamedplus "use system clipboard for yank

"BACKUP
set nobackup "get rid of annoying ~file
set nowb
set noswapfile

"MAP
inoremap jj <Esc>
nmap <F2> :Explore<CR>
nnoremap <F3> :buffers<CR>:buffer<Space>

"THEME
set number "line numbers
set cursorline "highlight line at cursor position
syntax on "syntax highlight
"matching bracets underlined instead of cursor changing
hi MatchParen cterm=underline ctermbg=none ctermfg=none

"COLORSCHEME
set termguicolors "add 256 color support
colorscheme atom-dark
"remove white underline from cursorline for atom-dark theme
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white

"TABS
set expandtab "spaces instead of tabs
set shiftwidth=2 "one tab 2 spaces
set tabstop=2

"SEARCH
set showmatch "highlight search
set hlsearch "highlight stays after search

"FIND
set path+=** "adds recursive search to :find command

"NETRW
let g:netrw_liststyle = 3 "tree list style

"EASYMOTION
"two characters easymotion line jumps
nmap <Space> <Plug>(easymotion-s)
