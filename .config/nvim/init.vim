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
  \ 'coc-html',
  \ 'coc-eslint', 
  \ 'coc-json', 
  \ 'coc-prettier', 
  \ ]

" The <leader> key is backslash by default
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <F6> <Plug>(coc-rename)
nmap <F2> <Plug>(coc-diagnostic-next)
nmap <F3> <Plug>(coc-diagnostic-prev)
" Auto-complete (Only works in insert mode, because inoremap)
inoremap <silent><expr> <c-space> coc#refresh()
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)
" nmap <silent> <F4> <Plug>(coc-range-select)
" xmap <silent> <F4> <Plug>(coc-range-select)
" TODO coc-range-select-backward

" Theme
colorscheme gruvbox
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

