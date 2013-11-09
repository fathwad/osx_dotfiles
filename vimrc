execute pathogen#infect()

filetype plugin on
syntax enable
colorscheme ir_black

set rtp+=/Users/frank/code/powerline/powerline/bindings/vim
set laststatus=2
set t_Co=256
set noswapfile
set nobackup
set nu
set cursorline
set sts=4
set shiftwidth=4
set expandtab
set nowrap
set mouse=a
set foldmethod=indent
set foldlevelstart=99
set hlsearch
set wildignore+=*.pyc,*.sqlite,*.dump,*.lst

vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>

nnoremap <Leader>/ :noh<CR>
nnoremap <Leader>n :tabnew<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <Leader>q :tabclose<CR>
nnoremap <Leader>w <C-w>w
nnoremap <Leader>B <C-w>_<C-w>\|
nnoremap <Leader>E <C-w>=
nnoremap <F3> zR
nnoremap <F4> zM

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['python', 'javascript'] }
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_enable_highlighting = 0

" command-t
map <Leader>T :CommandTFlush<CR>
let g:CommandTMaxHeight = 20
if &term =~ "xterm" || &term =~ "screen"
  let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
  let g:CommandTSelectNextMap = ['<C-n>', '<ESC>OB']   " up/down arrows
  let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
  let g:CommandTAcceptSelectionSplitMap = ['<C-j>']
endif

" nerdtree
let NERDTreeIgnore = ['\.pyc$']
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " close nerdtree when its last
