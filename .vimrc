set nocompatible              " be iMproved, required
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
filetype detect
set number
syntax on        
set tabstop=2
set shiftwidth=2
set expandtab
set clipboard=unnamed
set omnifunc=syntaxcomplete#Complete
set laststatus=2
set t_Co=256
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:airline_powerline_fonts = 1
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
execute pathogen#infect()
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Bundle 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-airline/vim-airline'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'thoughtbot/vim-rspec'
Plugin 'rstacruz/sparkup'
Plugin 'vim-scripts/ruby-matchit'
Plugin 'szw/vim-tags'
Plugin 'Shougo/neocomplete.vim'
Plugin 'vim-utils/vim-ruby-fold'
Plugin 'raimondi/delimitmate'
Plugin 'Konfekt/FastFold'
Plugin 'majutsushi/tagbar'
Plugin 'lucapette/vim-ruby-doc'
call vundle#end()            " required
filetype plugin indent on    " required
if has('gui_running')
    set background=light
else
    set background=dark
endif
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
map <F9> :!ruby %<cr>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
silent! nmap <C-o> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

map <F12> :! bin/rails server<cr>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
noremap <F4> :set hlsearch! hlsearch?<CR>

colorscheme railscasts
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature  
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif     
set shortmess+=A
set hlsearch
set tags=./tags;
set grepprg=ack
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_collect_identifiers_from_tags_files = 1
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
let g:ruby_fold_lines_limit = 500
" Use neocomplete.vim
let g:neocomplete#sources#omni#input_patterns = {
\   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
\}
nmap <F8> :TagbarToggle<CR>
runtime macros/matchit.vim
