" charset
set fenc=utf-8
" auto reread if 
set autoread
" other files can open while buffer editting
set hidden
" show input command on status
set showcmd

" looks good
" row number
set number
" highlight now row
set cursorline
" move to row end + 1 char
set virtualedit=onemore
" indent valid
set autoindent
" smartindent
set smartindent
" errorsound
set visualbell
" show pair brackets
set showmatch
" status line always show
set laststatus=2
" auto complement
set wildmode=list:longest
" move on the showing row
nnoremap j gj
nnoremap k gk
" syntax highlight
syntax enable
"set clipboard=unnamed,autoselect

" Tab
" unvisual to visualize
set list listchars=tab:\▸\-
" Tab char to half space
set expandtab
" Tab space size
set tabstop=4
" rowtop tab space size
set shiftwidth=4

" Search
" large and small identity if small
set ignorecase
" only large if large
set smartcase
" auto hit to input the word
set incsearch
" search return to first
set wrapscan
" search word highlight
set hlsearch
" ESC double highlight off
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" 矢印キーを無効にする
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>
"inoremap <Up> <Nop>
"inoremap <Down> <Nop>
"inoremap <Left> <Nop>
"inoremap <Right> <Nop>

colorscheme jellybeans

" NERDTree command
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>


" HTML complement
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END

" Use <Tab> and <S-Tab> for navigate completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
 

call pathogen#infect()
syntax on
filetype plugin indent on
