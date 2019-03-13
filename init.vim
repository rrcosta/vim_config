call plug#begin()
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Ruby
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'thoughtbot/vim-rspec'
Plug 'ap/vim-buftabline'
Plug 'tpope/vim-bundler', { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby'

" Markdown
Plug 'plasticboy/vim-markdown'

" Javascript Support
Plug 'pangloss/vim-javascript'

" Tmux support
Plug 'christoomey/vim-tmux-navigator'

" Elixir support
Plug 'slashmili/alchemist.vim'

" Minimap
Plug 'severin-lemaignan/vim-minimap'

" Fzf
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

"Go Lang"
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'hexdigest/gounit-vim'

" Python 
Plug 'sheerun/vim-polyglot'
Plug 'maralla/completor.vim', { 'do': 'pip install jedi' }

call plug#end()
" Tema "
colorscheme gruvbox
set background=dark

set hidden
set number
"set relativenumber
set mouse=a
set inccommand=split
set smarttab 
set autoindent
set ruler
set incsearch
set wildmenu

" Tab config
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>


" Airline configuration
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_theme = 'powerlineish'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif

" Minimap
let g:minimap_show='<leader>ms'
let g:minimap_update='<leader>mu'
let g:minimap_close='<leader>gc'
let g:minimap_toggle='<leader>gt'

" Files structure tree"
map — :NERDTreeToggle<CR> " open/close nerdtree window
map <leader>r :NERDTreeFind<cr> “ this is the key to jump to the nerdtree window from any other window
autocmd BufWinEnter * NERDTreeFind
map ] :NERDTreeFind<CR> “ pressing this inside any open file in vim will jump to the nerdtree and highlight where that file is -> very useful when you have multiple files open at once

