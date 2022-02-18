call plug#begin()
Plug 'morhetz/gruvbox' " Colorscheme

Plug 'tpope/vim-sensible' " Sensible defaults
Plug 'tpope/vim-unimpaired' " Add [ and ] commands
Plug 'tpope/vim-surround' " Add surround commands
Plug 'tomtom/tcomment_vim' " Add better gcc command
call plug#end()

" MAP
inoremap jj <Esc>
map <Space> /
nmap <F2> :Explore<CR>
nnoremap <C-p> :find<Space>
nnoremap <C-f> :buffer<Space><Tab>

" BASICS
set hidden " Files will be hidden and not closed when buffer changes
set scrolloff=5 " Lines before cursor on scroll
set report=0 " Aways show how many lines has changed
" Disable ex mode prompt
nmap Q <nop>

" BACKUP
set nobackup " Get rid of annoying ~file
set nowb
set noswapfile

" THEME
set number " Line numbers
set relativenumber " Use relative numbers
set cursorline " Highlight line at cursor position

" COLORSCHEME
set termguicolors " Add 256 color support
colorscheme gruvbox
set background=dark

" TABS
set expandtab " Spaces instead of tabs
set shiftwidth=2 " One tab 2 spaces
set tabstop=2

" SEARCH
set showmatch " Highlight search
set hlsearch " Highlight stays after search

" WILDMENU
set wildcharm=<Tab> " Allow usage of wildmenu in mappings
set path+=** " Adds recursive search to :find command

" NETRW
let g:netrw_liststyle=3 " Tree list style
autocmd FileType netrw setl bufhidden=delete " Fix netrw hanging buffer bug
