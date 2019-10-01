call plug#begin()
Plug 'gosukiwi/vim-atom-dark' "colorscheme
Plug 'tpope/vim-sensible' "sensible defaults
Plug 'tpope/vim-unimpaired' "add [ and ] commands
Plug 'tpope/vim-commentary' "add gcc command
Plug 'tpope/vim-surround' "add surround commands
Plug 'wellle/targets.vim' "better targets
Plug 'easymotion/vim-easymotion' "better line jumps
call plug#end()

"BASICS
set hidden "files will be hidden and not closed when buffer changes
set scrolloff=999

"BACKUP
set nobackup "get rid of annoying ~file
set nowb
set noswapfile

"MAP
inoremap jj <Esc>
nmap <F2> :Explore<CR>
nnoremap <C-p> :find<Space>
nnoremap <C-f> :buffer<Space><Tab>
"Fix & to preserve flags in normal mode
nnoremap & :&&<CR> 
"Fix & to preserve flags in visual mode
xnoremap & :&&<CR> 
"use <C-j> for inserting new line in normal mode
nnoremap <NL> i<CR><ESC> 

"WILDMENU
set wildcharm=<Tab> "Allow usage of wildmenu in mappings

"THEME
set number "line numbers
set cursorline "highlight line at cursor position
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
let g:netrw_liststyle=3 "tree list style
autocmd FileType netrw setl bufhidden=delete "fix netrw hanging buffer bug

"EASYMOTION
"two characters easymotion line jumps
map <Space> <Plug>(easymotion-s)

"ENABLE PROJECT VIMRC FILE
set exrc "execute .vimrc in project location
set secure "do not allow dangerous commands
