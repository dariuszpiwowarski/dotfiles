set noeb vb t_vb=
set number
set runtimepath^=~/.vim/bundle/ctrlp.vim
if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on
  " ...
endif
execute pathogen#infect()
syntax on
setlocal omnifunc=syntaxcomplete#Complete
set updatetime=100

let mapleader = ","

map <C-n> :NERDTreeToggle<CR>
map <F2> :! carton exec ./%<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
noremap <Leader>s :update<CR>
noremap <Leader>q :quit<CR>

let g:ctrlp_max_files = 20000
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

autocmd FileType html setlocal ts=4 sts=4 sw=4
autocmd FileType php setlocal ts=4 sts=4 sw=4
autocmd FileType javascript setlocal ts=4 sts=4 sw=4
autocmd FileType perl setlocal ts=2 sts=2 sw=2
autocmd FileType scss setlocal ts=2 sts=2 sw=2
autocmd FileType css setlocal ts=2 sts=2 sw=2
autocmd FileType sh setlocal ts=2 sts=2 sw=2

set hlsearch
" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

packadd! matchit
