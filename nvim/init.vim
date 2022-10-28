" Plugin section
call plug#begin("~/.vim/plugged")
    " Themes
    Plug 'preservim/nerdtree'
    Plug 'decaycs/decay.nvim', { 'as': 'decay' }

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " Csharp
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'dense-analysis/ale'

    " COC
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_server_use_net6 = 1
let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}

set number
set relativenumber

set expandtab
set shiftwidth=2
set autoindent

filetype indent plugin on
syntax enable
set t_Co=256
set cursorline

" Load the colorscheme
colorscheme dark-decay

" Mappings
nnoremap <silent>ff :Files<CR>

" NerdTree configuration
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Move in insert mode
inoremap <c-k> <up>
inoremap <c-j> <down>
inoremap <c-h> <left>
inoremap <c-l> <right>

" Coc
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<c-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

