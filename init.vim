set path+=**
set wildignore+=**/node_modules/**
set wildmenu
set number
set cursorline
set mouse=a
set noswapfile
set tabstop=4 shiftwidth=4  expandtab autoindent smartindent
set showcmd
set t_Co=256
set background=dark
set termguicolors
syntax on
set laststatus=2
filetype plugin on
" set foldmethod=syntax
" set foldcolumn=1
" set foldlevelstart=99
" set colorcolumn=80




" Plugins =====================================================================
call plug#begin('~/.vim/plugged')
    Plug 'mhinz/vim-startify'
    Plug 'dikiaap/minimalist'
    Plug 'tpope/vim-surround'
    Plug 'alvan/vim-closetag'
    Plug 'jiangmiao/auto-pairs'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'pangloss/vim-javascript'
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
    Plug 'junegunn/fzf',{ 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'rust-lang/rust.vim'
    Plug 'cespare/vim-toml'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'StanAngeloff/php.vim'
    Plug 'stephpy/vim-php-cs-fixer'

call plug#end()



" Close tag Congifg ===========================================================
let g:closetag_filenames = '*.html,*.jsx,*.tsx'
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }


" Startify Congifg ============================================================
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [ 
        \{'w':'~/Mario/work'},
        \{'m':'~/Mario/'},
        \{ 'i': '~/.config/nvim/init.vim'},
        \ ]


" Airline config ==============================================================
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Coc config ==================================================================
let g:coc_global_extensions = [
            \ 'coc-html',
            \ 'coc-css',
            \ 'coc-json',  
            \ 'coc-tslint-plugin',
            \ 'coc-tsserver',
            \ 'coc-prettier',
            \ 'coc-snippets',
            \ 'coc-pairs'
            \ ]


" terminal colors =============================================================
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"


" Colors ======================================================================
colorscheme minimalist
hi Normal ctermbg=NONE guibg=NONE
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
set fillchars=vert:\│,eob:\ 


" NERDTreeToggle config =======================================================
function! ToggleNERDTREE()
    NERDTreeToggle
    silent NERDTreeMirror
endfunction



"KeyBindinigs config ==========================================================
nnoremap <C-f> :Ag<CR>
nnoremap <C-g> :GFiles<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap ,html :-1read $HOME/.config/nvim/snippets/skeleton.html<CR>
nnoremap ,rfc  :-1read $HOME/.config/nvim/snippets/react.js<CR>
nnoremap <C-a> ggVG
nnoremap <C-n> :call ToggleNERDTREE()<CR>
nnoremap <C-s> :w<CR>
nnoremap t :bn<CR>


" MAP ESCAPE TO CAPS LOCK in vim
" Coc config ==================================================================
au VimEnter * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

