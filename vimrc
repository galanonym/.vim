call plug#begin()
Plug 'morhetz/gruvbox' "colorscheme

Plug 'tpope/vim-sensible' "sensible defaults
Plug 'tpope/vim-unimpaired' "add [ and ] commands
Plug 'tpope/vim-surround' "add surround commands
Plug 'tomtom/tcomment_vim' "add better gcc command
call plug#end()

"MAP
inoremap jj <Esc>
map <Space> /
nmap <F2> :Explore<CR>
nnoremap <C-p> :find<Space>
nnoremap <C-f> :buffer<Space><Tab>

"BASICS
set hidden "files will be hidden and not closed when buffer changes
set scrolloff=5 "lines before cursor on scroll
set report=0 "aways show how many lines has changed

"BACKUP
set nobackup "get rid of annoying ~file
set nowb
set noswapfile

"THEME
set number "line numbers
set relativenumber "use relative numbers
set cursorline "highlight line at cursor position

"COLORSCHEME
set termguicolors "add 256 color support
colorscheme gruvbox
set background=dark

"TABS
set expandtab "spaces instead of tabs
set shiftwidth=2 "one tab 2 spaces
set tabstop=2

"SEARCH
set showmatch "highlight search
set hlsearch "highlight stays after search

"WILDMENU
set wildcharm=<Tab> "Allow usage of wildmenu in mappings
set path+=** "adds recursive search to :find command

"NETRW
let g:netrw_liststyle=3 "tree list style
autocmd FileType netrw setl bufhidden=delete "fix netrw hanging buffer bug
