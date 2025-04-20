" Show line numbers.
set number
" Highlight search matches.
set hlsearch
" Use spaces for indentation.
set expandtab
" Number of spaces for indentation.
set tabstop=4
set shiftwidth=4
" Show the command in the bottom right.
set showcmd
" Make arrow keys do nothing to get rid of the bad habit.
" They still work in input mode which is fine.
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
" Swap files are only rarely useful. Just save often.
set noswapfile
" Show line numbers relative to cursor.
set relativenumber
" Automatically indent new lines.
set autoindent
" If we edit the same file in multiple Vim instances, they will synchronize.
set autoread
" Autosave file on every text change and exit of insert mode.
autocmd TextChanged,InsertLeave * if &readonly==0 && filereadable(bufname('%')) | silent update | endif
" Ignore case when searching.
set ignorecase
" Disable the mouse.
set mouse=""
" Don't wait.
set updatetime=0
set timeoutlen=0
set ttimeoutlen=0
" Make Ctrl+C copy selected text to the system clipboard.
" On X11, use xclip or xsel for PLACEHOLDER.
" On Wayland, use wl-copy for PLACEHOLDER.
vnoremap <C-c> :w !PLACEHOLDER <CR><CR>
" Show number of matches.
set shortmess-=S
" Without this it just overwhelms you with matches for auto-completion.
set complete=.
" Use UTF-8.
set encoding=utf-8
" Enable syntax highlighting based on the file.
filetype plugin on
syntax on
" Prevent creation of .viminfo file.
let skip_defaults_vim=1
set viminfo=""

" To get Zig syntax highlighting: https://github.com/ziglang/zig.vim#if-using-vim
