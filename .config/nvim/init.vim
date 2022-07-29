" https://www.youtube.com/watch?v=gnupOrSEikQ
" Shortcuts
" Copy selection to clipboard "*y
" :CocCommand workspace.renameCurrentFile

call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons' " Adds symbols to file nerdtree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Adds color to symbols

call plug#end()

" CoC
let g:coc_global_extensions = [
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]
" The default <leader> key is backslash
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <F6> <Plug>(coc-rename)
nmap <F2> <Plug>(coc-diagnostic-next)
nmap <F3> <Plug>(coc-diagnostic-prev)
inoremap <silent><expr> <c-space> coc#refresh()
" TODO Try all below
nmap <silent> <F4> <Plug>(coc-range-select)
xmap <silent> <F4> <Plug>(coc-range-select)
" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Theme
colorscheme gruvbox
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax


nmap <F1>  :NERDTreeToggle<CR>

" Set pwd to the currently opened file
set autochdir
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
