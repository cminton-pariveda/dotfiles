""" Pathogen
call pathogen#infect()
filetype plugin indent on
  
""" Vundle Configuration
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

" The following are examples of different formats supported.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""" General
set nobackup
set backspace=indent,eol,start
syntax on


""" Indenting
set autoindent
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab
autocmd filetype * setlocal formatoptions-=t
autocmd filetype * setlocal formatoptions-=o
set formatoptions-=t
set formatoptions-=o

" stop Python from setting comments at the first column "
au! FileType python setl nosmartindent

   
""" Spelling
"   set spell
"
    
""" Menu
set wildmenu
set wildmode=list:longest,full

     
""" Editing visual aids
set number
set scrolloff=4
set showmatch
set ruler
set nofoldenable

      
""" Search
set incsearch
set ignorecase
set smartcase

     
""" Files
set autoread
set encoding=utf-8
set fileencodings=utf-8
set textwidth=80
set hidden

        
""" GUI
set guifont=Monaco:h13
"dark or light color scheme?
if $COLORSCHEME == "dark"
  set background=dark
else
  set background=light
endif
colorscheme solarized
"colorscheme summerfruit
"set guioptions=egmrt
         

""" Git wrap
au FileType gitcommit set tw=72
map! Ok +
map! Om -
map! OM 
map! [2~   0
"for command mode 
map [2~ i
map OM 
map Ok +
map Om -

"#####################################################
"other sun4 keyboard stuff 
" map F1   indent 2 spaces
map [11~ I  
"map F2   indent 2 spaces  go down to next line
map [12~ I   OB
"UNDO to  u
map [26~ u 
" OPEN to o
map [31~ o
" map FIND to /
map [33~  /
"
map [29 ~yy
map [32~ p
map [24~ .

"#####################################################
" the following are the vt102 number pad keys 
" map 8 to UP-arrow ,4 to LEFT-arrow, 6 to RIGHT-arrow,2 to DOWN-arrow
" map 1 to down-left   3 to down-right 9 to up-right 7 to up-left
"#keypad  6
map! Ov  
map Ov l
"#keypad  4
map! Ot 
map Ot h
"#keypad  2
map! Or j
map Or j
"#keypad  8
map! Ox k
map Ox k
map Ow kh
map Os jl
map Oq hj
map Oy lk
"map 5 to goto first line 
map Ou :1 
"map 0 to goto last line
map Op :$ 
map On :!
map [24~ :ex:$
map OD 
map Ot 
map <Tab> <C-d>
map <S-Tab> <C-u>
"-------------------------------------------

" the following mappings make `[[' and `]]' find the closest brackets
map [[ ?{<CR>
map ]] /{<CR>
map ][ /}<CR>
map [] ?}<CR>

" disable 'ex' mode
map q: <nop>
map Q :q<cr>
