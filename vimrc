call plug#begin()
Plug 'tpope/vim-sensible' "sensible defaults
Plug 'tpope/vim-unimpaired' "use [ and ] commands
Plug 'tpope/vim-commentary' "use gcc to comment
Plug 'easymotion/vim-easymotion' "better line jumps
Plug 'sjl/badwolf' "colorscheme
call plug#end()

"BASICS
set hidden "files will be hidden and not closed when buffer changes

"BACKUP
set nobackup "get rid of annoying ~file
set nowb
set noswapfile

"MAP
inoremap jj <ESC>
nmap <F2> :Explore<CR>
nnoremap <F3> :buffers<CR>:buffer<Space>

"NETRW
let g:netrw_liststyle = 3 "tree list style

"THEME
set number "line numbers
set cursorline "highlight line at cursor position
syntax on "syntax highlight
"matching bracets underlined instead of cursor changing
hi MatchParen cterm=underline ctermbg=none ctermfg=none

"COLORSCHEME
set termguicolors "add 256 color support
colorscheme badwolf

"TABS
set expandtab "spaces instead of tabs
set shiftwidth=2 "one tab 2 spaces
set tabstop=2

"SEARCH
set showmatch "highlight search
set hlsearch "highlight stays after search

"EASYMOTION
"two characters easymotion line jumps
nmap <Space> <Plug>(easymotion-s)
