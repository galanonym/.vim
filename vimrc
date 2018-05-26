call plug#begin()
Plug 'tpope/vim-sensible' "sensible defaults
Plug 'tpope/vim-unimpaired' "use [ and ] commands
Plug 'tpope/vim-commentary' "use gcc to comment
Plug 'crusoexia/vim-monokai' "colorscheme
Plug 'easymotion/vim-easymotion' "better line jumps
call plug#end()

"BASICS
set hidden "files will be hidden and not closed when buffer changes

"BACKUP
set nobackup "get rid of annoying ~file
set nowb
set noswapfile

"ESC
inoremap jj <ESC>

"NETRW
nmap <F2> :Exp<CR>

"BUFFERS
nnoremap <F3> :buffers<CR>:buffer<Space>

"THEME
set number "line numbers
set cursorline "highlight line at cursor position

"COLORSCHEME
syntax on "syntax highlight
colorscheme monokai
"matching bracets underlined instead of cursor changing
hi MatchParen cterm=underline ctermbg=none ctermfg=none

"TABS
set expandtab "spaces instead of tabs
set shiftwidth=2 "one tab 2 spaces
set tabstop=2

"SEARCH
set showmatch "highlight search
set hlsearch "highlight stays after search

"EASYMOTION
"two characters easymotion line jumps
nmap <Space> <Plug>(easymotion-s2)
