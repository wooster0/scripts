set number " show line numbers
set hlsearch " highlight search matches
set expandtab " use spaces
" number of spaces
set tabstop=4
set shiftwidth=4
set showcmd " show the command in the bottom right
" make arrow keys do nothing to get rid of the bad habit.
" they still work in input mode which is fine.
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
" fzf's file explorer
nmap <C-_> :Files<CR>
set noswapfile " just save often
set relativenumber " show line numbers relative to cursor
set autoindent " automatically indent new lines
" if we edit the same file in multiple Vim instances, they will synchronize
set autoread
" autosave file on every text change and exit of insert mode
autocmd TextChanged,InsertLeave * if &readonly==0 && filereadable(bufname('%')) | silent update | endif
" ignore case when searching
set ignorecase
" disable the mouse
set mouse=""
" don't wait
set updatetime=0
set timeoutlen=0
set ttimeoutlen=0
" make Ctrl+C copy selected text to the system clipboard
vnoremap <C-c> :w !xclip -sel c <CR><CR>
colorscheme koehler

" vim-plug plugins
call plug#begin('~/.vim/plugged')
  Plug 'ziglang/zig.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end()
