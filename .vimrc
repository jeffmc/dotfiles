" Jeff McMillan .vimrc file
" Inspired by https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
" https://github.com/jiangmiao/auto-pairs

" Command history
set history=500

" Read outside changes to files
set autoread
au FocusGained,BufEnter * checktime

" Line numbers
set number

" Center cursor on screen, leave 7 lines below/above
set so=7

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" Highlight is reactive to search command live
set hlsearch
set incsearch
set ignorecase

" Wrap using arrow keys to move cursor
set whichwrap+=<,>,h,l,[,]

" Enable syntax highlighting
syntax enable

" Set regular expression engine automatically
set regexpengine=0

" Colorscheme
try
    colorscheme desert
catch
endtry

set background=dark

" Highlight the background of line numbers (needs to be after other highlight
" and syntax commands in .vimrc)
highlight LineNr term=bold ctermfg=5 ctermbg=0

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext<cr>

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction
