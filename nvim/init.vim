" Plugin section
call plug#begin("~/.vim/plugged")
    " Themes
    Plug 'sonph/onehalf', { 'rtp': 'vim' }
    Plug 'wojciechkepka/vim-github-dark'
    Plug 'projekt0n/github-nvim-theme'
    Plug 'preservim/nerdtree'
    Plug 'decaycs/decay.nvim', { 'as': 'decay' }

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " Javascript
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']

    " TSX && JSX syntax
    Plug 'yuezk/vim-js'
    Plug 'HerringtonDarkholme/yats.vim'
    Plug 'maxmellon/vim-jsx-pretty'

    " Golang
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

set number
set relativenumber

set expandtab
set shiftwidth=2
set autoindent

syntax enable
set t_Co=256
set cursorline

" Load the colorscheme
colorscheme dark-decay

" Mappings
nnoremap <silent>ff :Files<CR>

" Enter to accept coc
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" NerdTree configuration
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
