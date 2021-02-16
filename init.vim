set path+=**
set wildignore+=**/node_modules/**
set wildmenu
set number
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set showcmd
syntax on 
filetype plugin on

call plug#begin('~/.vim/plugged')
	Plug 'romainl/Apprentice'
	Plug 'dikiaap/minimalist'
	Plug 'pangloss/vim-javascript'
	Plug 'preservim/nerdtree'
	Plug 'itchyny/lightline.vim'
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-commentary'
call plug#end()

set laststatus=2
set t_Co=256  
colorscheme minimalist


"nnoremap <C-p> :find 
"nnoremap <C-p> :FZF<CR> 
nnoremap <C-f> : Ag<CR>
nnoremap  <C-p> :GFiles<CR>
nnoremap ,html :-1read $HOME/.config/nvim/snippets/skeleton.html<CR> 
nnoremap ,rfc  :-1read $HOME/.config/nvim/snippets/react.js<CR>
nnoremap <C-a> ggVG
nnoremap <C-up> gg
nnoremap <C-down> G
nnoremap <C-right> $
nnoremap <C-left> 0
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-s> :w<CR> 

" MAP ESCAPE TO CAPS LOCK in vim 
au VimEnter * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
