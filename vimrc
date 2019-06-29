set nocompatible

filetype plugin on
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/gvimrc_example.vim

syntax on
set autochdir
set mouse=a
set showmatch
let Tlist_Auto_Open = 0
let Tlist_Enable_Fold_column = 0
let Tlist_Exist_OnlyWindow = 0
let Tlist_Sort_Type = 0

set number
set nowrap
set showcmd
set incsearch
set visualbell
set noerrorbells
set ignorecase
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=8
set backupdir=~/.vimbak
set browsedir=current
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

if exists('+cc')
  set cc=120
else
  match ErrorMsg '\%>120v.\+'
endif

match ErrorMsg '\s\+$'

autocmd BufEnter * cd %:p:h
syntax enable
coloscheme desert
set tags=.\tags,tags

au FileType C set makeprg=gcc\%
au FileType Cpp set makeprg=g++\%

iab c1 /********************************************************/

iab #i #include
iab #d #define

set cscopetag
set csto=0
set cscopeverbose

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>

nmap <C-@><C-@>s :vert find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>g :vert find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>c :vert find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>t :vert find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>e :vert find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>f :vert find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@><C-@>i :vert find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@><C-@>d :vert find d <C-R>=expand("<cword>")<CR><CR>



