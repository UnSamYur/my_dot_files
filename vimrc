" 
"                                         ___________                       ________ 
"   |\    /| \       /      \          /       |        |\    /|  |-------  |
"   | \  / |  \     /        \        /        |        | \  / |  |      |  |
"   |  \/  |   \   /          \      /         |        |  \/  |  |______|  |
"   |      |    \ /            \    /          |        |      |  |\        |
"   |      |     |              \  /           |        |      |  | \       |
"   |      |     |               \/      ______|_____   |      |  |  \      |_______
"

" Reference chart of values:
"Ps = 0 -> blinking block
" Ps = 1 -> blinking block (default)
" Ps = 2 -> steady block
" Ps = 3 -> blinking underline
" Ps = 4 -> steady underline
" Ps = 5 -> blinking bar (xterm)
" Ps = 6 -> steady bar (xterm)

set preserveindent
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Toggle fzf in vim 
set path+=**

" Swaps in vim 
"set noswapfile
 
" File types 
filetype on

" Settings
" set mouse=a
" set cc=79 " Count of symbols in line
set nocompatible
set modelines=0
set noshiftround
set hlsearch
set mps+=<:>
set mps+=":"
set mps+=':'
set showmatch
set ttyfast
set smarttab
set breakindent
set linebreak
set wildmenu
set smartindent
set re=0
set guicursor=
set mouse=v
set showcmd
set history=128
set undolevels=2048
set scrolloff=10
set wildmode=list:longest
set wrap
set completeopt=
set incsearch
set ignorecase
set smartcase
 
" tabs 
set shiftwidth=4
set tabstop=4
set softtabstop=4 expandtab

" termgui
set termguicolors
nnoremap <F8> :set termguicolors!<CR>
inoremap <F8> <esc>:set termguicolors!<CR>

" highlight same word under cursor
autocmd CursorMoved * silent! exe printf("match Search /\\<%s\\>/", expand(''))

" Auto source vimrc
autocmd! bufwritepost $MYVIMRC source $MYVIMRC

"Cursor line
set cursorline
nnoremap <F3> :set cursorline!<CR>
inoremap <F3> <esc>:set cursorline!<CR>

" Cursor column
nnoremap <F4> :set cursorcolumn!<CR>
inoremap <F4> <esc>:set cursorcolumn!<CR>

" Toggle spell check
nnoremap <F5> :setlocal spell! spelllang=ru_ru,en_us<CR>
inoremap <F5> <C-o>:setlocal spell! spelllang=ru_ru,en_us<CR>

" Toggle relative line numbers and regular numbers 
set relativenumber
nnoremap <F6> :set relativenumber!<CR>
inoremap <F6> <C-o>:set relativenumber!<CR>
 
" Toggle line numbers
set number
nnoremap <F7> :set number!<CR>
inoremap <F7> <C-o>:set number!<CR>

" My lang map
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" map space to control f (to scroll pages down)
map <space> <C-f>

" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

" Yank from cursor to the end of line.
nnoremap Y y$

" Autocompile R markdown
autocmd Filetype rmd map <F4> :!echo<space>"require(markdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<CR>

" insert html template & css & php
nnoremap ht :-1read $HOME/.vim/templates/template.html<CR>Gddgg16jA
nnoremap cs :-1read $HOME/.vim/templates/template.css<CR>Gddgg
nnoremap php :-1read $HOME/.vim/templates/template.php<CR>Gddgg1jA
 
" insert c++/c/c#/pascal template 
nnoremap cpp :-1read $HOME/.vim/templates/template.cpp<CR>Gddgg10jA
nnoremap cl :-1read $HOME/.vim/templates/template.c<CR>Gddgg9jA
nnoremap pas :-1read $HOME/.vim/templates/template.pas<CR>A<left>
nnoremap c# :-1read $HOME/.vim/templates/template.cs<CR>Gddgg8jA

" school pascal
nnoremap pa :-1read $HOME/.vim/templates/scolar.pas<CR>GddggA<left>

" insert java  & fortran template
nnoremap java :-1read $HOME/.vim/templates/template.java<CR>Gddgg3jA
nnoremap frt :-1read $HOME/.vim/templates/template.f08<CR>GddggA

" shebang bash & perl & lua
nnoremap bs :-1read $HOME/.vim/templates/template.sh<CR>Gddgg2ji
nnoremap pr :-1read $HOME/.vim/templates/template.pl<CR>Gddgg2ji
nnoremap lua :-1read $HOME/.vim/templates/template.lua<CR>Gddgg2ji

" shebang python
nnoremap py :-1read $HOME/.vim/templates/template.py<CR>Gddgg4ji

" go template
nnoremap gol :-1read $HOME/.vim/templates/template.go<CR>Gddgg8jA

" gui templates.
nnoremap cui :-1read $HOME/.vim/templates/template_gui.c<CR>
nnoremap cpui :-1read $HOME/.vim/templates/template_gui.cpp<CR>
nnoremap csui :-1read $HOME/.vim/templates/template_gui.cs<CR>

" syntax is always on
syntax on

set autoindent
set hls ic
let python_highlight_all = 1
let c_highlight_all = 1

"esc is jj or jk or ii etc.
imap jj <Esc>
imap jk <Esc>
imap ii <Esc>
imap kj <Esc>
vmap jj <Esc>
vmap jk <Esc>
vmap ii <Esc>
vmap kj <Esc>

" Set file type
nnoremap sx :setf xml

"set split and vertical split
nnoremap vsp :vsplit<space>
nnoremap spl :split<space>
 
nnoremap <C-b> :split<space>
nnoremap <C-g> :vsplit<space>
inoremap <C-b> <esc>:split<space>
inoremap <C-g> <esc>:vsplit<space>

" Split controls with Ctrl2, Ctrl3, Ctrl1, Ctrl4
"nnoremap <c-2> <c-w>j
"nnoremap <c-3> <c-w>k
"nnoremap <c-1> <c-w>h
"nnoremap <c-4> <c-w>l

" Split controls with Altj, Altk, Alth, Altl
"nnoremap <A-j> <c-w>j
"nnoremap <A-k> <c-w>k
"nnoremap <A-h> <c-w>h
"nnoremap <A-l> <c-w>l

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

"make and load views
nnoremap <silent>mv :mkview<CR>
nnoremap <silent>lv :loadview<CR>
nnoremap <silent><C-m> :mkview<CR>
nnoremap <silent><C-l> :loadview<CR>

" Imaps 
imap <A-v> <esc>v
imap <C-v> <esc>v
imap vv <esc>v

" find and replace
nnoremap <C-a> :%s///g<left><left><left>
inoremap <C-a> <esc>:%s///g<left><left><left>
vnoremap <C-a> <esc>:'<,'>s///<left><left>

" Copy and paste 
nnoremap <C-y> yy
inoremap <C-y> <esc>yya
vnoremap <C-y> y

" TABS 
" open and switch tabs 
nnoremap tn :tabnew<space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>

nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

inoremap tn <esc>:tabnew<space>
inoremap tk <esc>:tabnext<CR>
inoremap tj <esc>:tabprev<CR>

inoremap tf <esc>:tabfirst<CR>
inoremap tl <esc>:tablast<CR>

nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

" Try my own tabs
nnoremap <C-t> :tabnew<space>

nnoremap <C-k> :tabnext<CR>
nnoremap <C-j> :tabprev<CR>
nnoremap <C-h> :tabfirst<CR>
nnoremap <C-l> :tablast<CR>

nnoremap [t :tabnew<space>

nnoremap [k :tabnext<CR>
nnoremap [j :tabprev<CR>
nnoremap [h :tabfirst<CR>
nnoremap [l :tablast<CR>

" in insert mode
inoremap <C-t> <esc>:tabnew<space>

inoremap <C-k> <esc>:tabnext<CR>
inoremap <C-j> <esc>:tabprev<CR>
inoremap <C-h> <esc>:tabfirst<CR>
inoremap <C-l> <esc>:tablast<CR>

inoremap [t <esc>:tabnew<space>

inoremap [k <esc>:tabnext<CR>
inoremap [j <esc>:tabprev<CR>
inoremap [h <esc>:tabfirst<CR>
inoremap [l <esc>:tablast<CR>

" Navigation
nnoremap 8 k
nnoremap 2 j
nnoremap 4 h
nnoremap 6 l

" aliases:
nnoremap <C-s> :w<CR>
inoremap <C-s> <esc>:w<CR>
nnoremap <C-q> :wq<CR>
nnoremap <C-e> :q!<CR>
nnoremap <C-r> :so %<CR>
inoremap <C-q> <esc>:wq<CR>
inoremap <C-e> <esc>:q!<CR>
nnoremap <C-z> u
inoremap <C-z> <esc>u
nnoremap <C-u> :help<CR>
inoremap <C-u> <esc>:help<CR>

" Do opened and closed symbols 
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap < <><left>
inoremap " ""<left>
inoremap ' ''<left>
inoremap /* /**/<left><left>
inoremap <!- <!----><left><left><left>
inoremap {P {%<space><space>%}<left><left><left>

inoremap (<backspace> ()<backspace><backspace>
inoremap [<backspace> []<backspace><backspace>
inoremap {<backspace> {}<backspace><backspace>
inoremap <<backspace> <><backspace><backspace>

inoremap () ()<left>
inoremap [] []<left>
inoremap {} {}<left>
inoremap <> <><left>

inoremap (I (
inoremap {_ {
inoremap << <<<space>
" <<  for c++
inoremap "? "
inoremap '/ '

" For programming 
nnoremap sass :!sass --watch main.sass:main.css<CR>
inoremap ret return
 
" set textwidth=79 for Python coding PEP8 rules 
" set textwidth=79

" Auto tags in html (You can add your all tags)
" normal tags
inoremap <ht <html lang="ru"><CR><CR></html><esc>kA<tab>
inoremap <hd <head><CR><CR></head><esc>kA<tab>
inoremap <bd <body><CR><CR></body><esc>kA<tab>
inoremap <dv <div><CR><CR></div><esc>kA<tab>
inoremap <hed <header><CR><CR></header><esc>kA<tab>
inoremap <ft <footer><CR><CR></footer><esc>kA<tab>
inoremap <mn <main><CR><CR></main><esc>kA<tab>
inoremap <nv <nav><CR><CR></nav><esc>kA<tab>
inoremap <asd <aside><CR><CR></aside><esc>kA<tab>
inoremap <det <details><CR><CR></details><esc>kA<tab>
inoremap <ul <ul><CR><CR></ul><esc>kA<tab>
inoremap <pr <pre><CR><CR></pre><esc>kA<tab>
inoremap <ol <ol><CR><CR></ol><esc>kA<tab>
inoremap <p <p></p><left><left><left><left>
inoremap <a <a<space>href=""></a><left><left><left><left><left><left>
inoremap <li <li></li><left><left><left><left><left>
inoremap <smr <summary></summary><esc>10ha

" Tags with id
inoremap <bd# <body><CR><CR></body><esc>kA<tab>
inoremap <dv <div><CR><CR></div><esc>kA<tab>
inoremap <hed <header><CR><CR></header><esc>kA<tab>
inoremap <ft <footer><CR><CR></footer><esc>kA<tab>
inoremap <mn <main><CR><CR></main><esc>kA<tab>
inoremap <nv <nav><CR><CR></nav><esc>kA<tab>
inoremap <asd <aside><CR><CR></aside><esc>kA<tab>
inoremap <det <details><CR><CR></details><esc>kA<tab>
inoremap <ul <ul><CR><CR></ul><esc>kA<tab>
inoremap <pr <pre><CR><CR></pre><esc>kA<tab>
inoremap <ol <ol><CR><CR></ol><esc>kA<tab>
inoremap <p <p></p><left><left><left><left>
inoremap <a <a<space>href=""></a><left><left><left><left><left><left>
inoremap <li <li></li><left><left><left><left><left>
inoremap <smr <summary></summary><esc>10ha

" Auto python
inoremap def<space>: def<space>():<CR><tab><esc>kA<left><left><left>
inoremap class<space>: class<space>:<CR><tab>def __init__(self):<CR><tab><esc>2kA<left>

" Auto c & c++ 
inoremap #def #define<space>
inoremap #inc #include<space>
inoremap #ifd #ifdef<space><CR><CR>#endif<esc>kA<tab><esc>kA
inoremap #ifn #ifndef<space><CR><CR>#endif<esc>kA<tab><esc>kA
inoremap #if<space> #if<space><CR><CR>#endif<esc>kA<tab><esc>kA
inoremap class<space>{ class<space><CR>{<CR><CR>};<esc>kA<tab><esc>2kA
inoremap struct<space>{ class<space><CR>{<CR><CR>};<esc>kA<tab><esc>2kA
inoremap temp template<typename T><space>
inoremap nms namespace<space>

" Auto c#
inoremap cwl Console.WriteLine();<left><left>
inoremap crl Console.ReadLine():<left><left>
inoremap crk Console.ReadKey();<left><left>

" Auto bash
" inoremap if<space>[ if<space>[[<space><space>]];<CR><backspace>then<CR><CR><backspace>fi<esc>kA<tab><esc>2kA<left><left><left><left>

" Auto pascal
inoremap prg program<space>;<left>
inoremap begn begin<CR><CR>end;<up><tab>

" Plugins
call plug#begin('~/.vim/plugged')
    Plug 'https://github.com/vim-airline/vim-airline'
call plug#end()
