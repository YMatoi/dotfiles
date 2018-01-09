call plug#begin('~/.vim/plugged')

Plug 'elixir-editors/vim-elixir'
" Vundle/NeoBundle と同じように
Plug 'junegunn/seoul256.vim'

" コマンド実行時に読み込む
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle'] }

" 指定したファイルタイプを開いたときに読み込む
Plug 'tpope/vim-fireplace', { 'for': ['clojure'] }
Plug 'venantius/vim-cljfmt'
Plug 'guns/vim-clojure-static'
Plug 'kien/rainbow_parentheses.vim'
Plug 'guns/vim-clojure-highlight'
" X | Y の時, X をインストールした後に Y をインストール
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'kana/vim-submode'
Plug 'itchyny/lightline.vim'

call plug#end()

syntax on
filetype plugin indent on
set laststatus=2
set backspace=indent,eol,start
set expandtab
set tabstop=2
set shiftwidth=2
let g:indent_guides_enable_on_vim_startup = 1

:command! Repl :terminal lein repl
tnoremap <silent> <ESC> <C-\><C-n>

nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>
call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')
