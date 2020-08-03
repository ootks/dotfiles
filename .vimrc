" Set up vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" " For GitHub repos, you specify plugins using the
" " 'user/repository' format
Plugin 'gmarik/vundle'
"
Plugin 'scrooloose/nerdtree.git'

"Markdown syntax highlighter
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

"Make <LEADER><LEADER>F search for character
Plugin 'easymotion/vim-easymotion'

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'

Plugin 'tpope/vim-surround'

Plugin 'vimwiki/vimwiki'

Plugin 'lervag/vimtex'

"Gets me all of the color schemes.
Plugin 'flazz/vim-colorschemes'

"https://teamgaslight.com/blog/vim-plus-tmux-a-perfect-match
Plugin 'christoomey/vim-tmux-navigator'

map <Leader>ll :VimtexCompile<Cr>
map <Leader>lv :VimtexView<Cr>

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

Plugin 'sophacles/vim-processing'

Plugin 'metakirby5/codi.vim'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.

let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on
"
" " IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" " can be called correctly.
"set shellslash
"
" " IMPORTANT: grep will sometimes skip displaying the file name if you
" " search in a singe file. This will confuse Latex-Suite. Set your grep
" " program to always generate a file-name.
set grepprg=grep\ -nH\ $*
"
" " OPTIONAL: This enables automatic indentation as you type.
filetype indent on
"
" " OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults
" to
" " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" " The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'

"Make the leader key ' '
let mapleader = " "

set tabstop=4

set shiftwidth=4

set softtabstop=4

set expandtab

set autoindent

"Ignore case, unless the search term is all lower case
set ignorecase
set smartcase

"Make searches highlight terms, as you go
set hlsearch
set incsearch

colorscheme jellybeans
syntax on
filetype plugin indent on
set whichwrap+=<,>,h,l,[,]

"Make title the name of the file
set title

set number
set relativenumber
"set mouse=a

"Replace : with ; to enter commands
nnoremap ; :

"Stops arrow keys from doing things
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"Makes j move over wrapped lines intuitively
"nnoremap j gj
"nnoremap k gk

"Set buffer movement to be CTRL-motion, instead of CTRL-w motion
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Quickly edit/reload the vimrc file
nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>sv :so $MYVIMRC<CR>
"Stop highlighting searches adtter a whil 
nmap <silent> ,/ :nohlsearch<CR>

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" Shortcuts to switch between tabs
noremap <S-h> gT
noremap <S-l> gt

highlight ColorColumn ctermbg=DarkGrey guibg=#2c2d27

"" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" <Leader>f{char} to move to {char}
map  <Leader>F <Plug>(easymotion-bd-F)
nmap <Leader>F <Plug>(easymotion-overwin-F)

map  <Leader>/ <Plug>(easymotion-sn)
omap <Leader>/ <Plug>(easymotion-tn)

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo;

"Writes with sudo
cmap w! !sudo tee > dev/null %

let g:vimwiki_list = [{'path': '~/Notes',
                     \ 'template_path': '~/Notes/templates',
                     \ 'template_default': 'note_template',
                     \ 'template_ext': '.html'}]


"Make f/f work accross multiple lines
let [pvft,pvftc]=[1,32]
fun! Multift(x,c,i)
    let [g:pvftc,g:pvft]=[a:c,a:i]
    let pos=searchpos((a:x==2? mode(1)=='no'? '\C\V\_.\zs' : '\C\V\_.' : '\C\V').(a:x==1 && mode(1)=='no' || a:x==-2? nr2char(g:pvftc).'\zs' : nr2char(g:pvftc)),a:x<0? 'bW':'W')
    call setpos("'x", pos[0]? [0,pos[0],pos[1],0] : [0,line('.'),col('.'),0]) 
    return "`x"
endfun
no <expr> F Multift(-1,getchar(),-1)
no <expr> f Multift(1,getchar(),1)
no <expr> T Multift(-2,getchar(),-2)
no <expr> t Multift(2,getchar(),2)
no <expr> , Multift(-pvft,pvftc,pvft)
no <expr> <return> Multift(pvft,pvftc,pvft)

"Map <S-S> to :s with normal regex bindings
map <S-S> :s/\v

"Make a grey column on the 80th character
set colorcolumn=80

cnoremap !py !python %

"http://vim.wikia.com/wiki/Backspace_and_delete_problems
set backspace=2 " make backspace work like most other apps

set directory=$HOME/.vim/swapfiles

"Following two lines makes vimtex hide/format math lines.
set conceallevel=1
let g:tex_conceal='abdmg'

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Map T to opening the current directoy in a new tab
nnoremap T :Vex<CR>

" Default value for the latex compiler.
let g:vimtex_compiler_latexmk = {
    \ 'backend' : 'process',
    \ 'background' : 1,
    \ 'build_dir' : '/home/kshu/latex_garbage/',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'options' : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
