"Vim Config
set rnu
set hidden
let mapleader = ","
set tabstop=8 softtabstop=2 expandtab shiftwidth=2 smarttab
au! BufNewFile,BufRead *.svelte set ft=html
set colorcolumn=81
set number
"for vim-polyglot
set nocompatible

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'vim-airline/vim-airline'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'sheerun/vim-polyglot'
Plug 'alvan/vim-closetag'
Plug 'ap/vim-css-color'
Plug 'jremmen/vim-ripgrep'
call plug#end()

""" Mappings
"fzf
:map <C-T> :FZF<CR>
"navigation
:nnoremap <leader>z :bp<CR>
:nnoremap <leader>x :bn<CR>
"ripgrep search
:noremap <leader>ff :Rg<Space>

"NERDTree
:noremap <C-N> :NERDTreeVCS<CR>

"NERDCommenter
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

"vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'

"prettier
let g:prettier#autoformat = 0
" Uncomment following line for automatic formatting
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
