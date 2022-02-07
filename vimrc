"basic"
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
let &t_ut=''
set tabstop=2
set shiftwidth=2
set softtabstop=2
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
set autochdir
let mapleader=" "
syntax on
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
set incsearch
set ignorecase
set smartcase

"keymap"
noremap <LEADER><CR> :nohlsearch<CR>

map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
"分屏"
map sd :set splitright<CR>:vsplit<CR>
map sa :set nosplitright<CR>:vsplit<CR>
map sw :set nosplitbelow<CR>:split<CR>
map ss :set splitbelow<CR>:split<CR>

"光标在不同实例中移动"
map <LEADER>k <C-w>k
map <LEADER>j <C-w>j
map <LEADER>h <C-w>h
map <LEADER>l <C-w>l

"设置分屏大小"
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

"new tab"
map st :tabe<CR>
map s- :-tabnext<CR>
map s= :+tabnext<CR>

"切换tab分屏方向"
map sh <C-w>t<C-w>H
map sk <C-w>t<C-w>K

"spell check toggle"
map sc :set spell!<CR>


"install plug"
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'connorholyday/vim-snazzy'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'elzr/vim-json'
Plug 'mbbill/undotree'
Plug 'ycm-core/YouCompleteMe'

call plug#end()

let g:SnazzyTransparent = 1
colorscheme snazzy

"key map"
nnoremap tt :NERDTreeToggle<CR>

"NERDTree-git"
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusShowIgnored = 1
let g:NERDTreeGitStatusConcealBrackets = 1
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers = 1
let NERDTreeAutoCenter = 1

"NERDTree-syntax-highlight"
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let g:NERDTreeSyntaxEnabledExtensions = ['hbs', 'lhs'] " enable highlight to .hbs and .lhs files with default colors
let g:NERDTreeSyntaxEnabledExactMatches = ['dropbox', 'node_modules', 'favicon.ico'] " enable highlight for dropbox and node_modules folders, and favicon.ico files with default colors

"markdown preview"
nnoremap mr :MarkdownPreviewToggle<CR>

"vim airline"
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"vim markdown"
let g:vim_markdown_fenced_languages = ['javascript=js', 'typescript=ts']
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_new_list_item_indent = 1
nnoremap tf :TableFormat<CR>

"vim json"
let g:vim_json_syntax_conceal = 1

"undo tree"
nnoremap fh :UndotreeToggle<CR>
let g:undotree_WindowLayout = 2
