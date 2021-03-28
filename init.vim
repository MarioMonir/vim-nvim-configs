set path+=**
set wildignore+=**/node_modules/**
set wildmenu
set number
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set showcmd
set t_Co=256
syntax on 
filetype plugin on

call plug#begin('~/.vim/plugged')
    Plug 'dikiaap/minimalist'
    Plug 'jiangmiao/auto-pairs'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'pangloss/vim-javascript'
	Plug 'preservim/nerdtree'
	Plug 'vim-airline/vim-airline'
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-commentary'

call plug#end()

set laststatus=2
colorscheme minimalist

let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:coc_global_extensions = ['coc-html','coc-css','coc-json','coc-tslint-plugin','coc-tsserver','coc-prettier']


" highlight Normal ctermfg=white ctermbg=black guibg=#000000

"nnoremap <C-p> :find 
"nnoremap <C-p> :FZF<CR> 
nnoremap <C-f> :Ag<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR> 
nnoremap ,html :-1read $HOME/.config/nvim/snippets/skeleton.html<CR> 
nnoremap ,rfc  :-1read $HOME/.config/nvim/snippets/react.js<CR>
nnoremap <C-a> ggVG
nnoremap <C-right> $
nnoremap <C-left> 0
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-s> :w<CR> 
nnoremap t :bn<CR>


" MAP ESCAPE TO CAPS LOCK in vim 
au VimEnter * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

 
