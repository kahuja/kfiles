"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " get out of horrible vi-compatible mode
set modelines=0 " to prevent some security exploits with modelines files.
set history=1000 " How many lines of history to remember
set cf " enable error files and error jumping
set clipboard+=unnamed " turns out I do like is sharing windows clipboard
set ffs=unix,mac,dos " support all three, in this order
set viminfo+=! " make sure it can save viminfo
set isk+=_,$,@,%,#,- " none of these should be word dividers, so make them not be
set backspace=indent,eol,start " allow backspacing over everything in insert mode
"set undofile
set number
set nostartofline
set hidden " allow unsaved buffers

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" turning off filetype for pathogen calls
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My plugins
Plugin 'sheerun/vim-polyglot'
Plugin 'will133/vim-dirdiff'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'dsawardekar/wordpress.vim'
Plugin 'tpope/vim-markdown'
Plugin 'Valloric/YouCompleteMe'
Plugin 'chr4/nginx.vim'
Plugin 'elixir-editors/vim-elixir'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/fzf.vim'
"Plugin 'w0rp/ale'
Plugin 'posva/vim-vue'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on " load filetype plugins
syntax enable
filetype on " detect the type of file

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme/Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark " we are using a dark background
" solarized options 
let g:solarized_termtrans = 1
"let g:solarized_termcolors = 16
colorscheme solarized
syntax on " syntax highlighting on
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Cues
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set colorcolumn=85
"hi ColorColumn ctermbg=darkgrey guibg=darkgrey
set showmatch " show matching brackets
set showcmd "show partial command in last line of screen
set wildmenu "tab will show a list of possible commands
set wildmode=list:longest
set cursorline "highlight the line that you are on
set cursorcolumn "highlight the column that you are on
set ttyfast
set mat=5 " how many tenths of a second to blink matching brackets for
set ignorecase
set smartcase
set hlsearch " highlight searched for phrases
set incsearch " BUT do highlight as you type you search phrase
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ " what to show when I hit :set list
set so=10 " Keep 10 lines (top/bottom) for scope
set noerrorbells " no noises
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2 " always show the status line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fo=tcrqn " See Help (complex)
set ai " autoindent
set si " smartindent
set sta " smarttab
set cindent " do c-style indenting
set cinkeys-=0#
set indentkeys-=0#
set tabstop=2 " tab spacing (settings below are just to unify it)
set softtabstop=2 " unify
set shiftwidth=2 " unify 
"set noexpandtab " real tabs please!
set expandtab
set nowrap " do not wrap lines  
set smarttab " use tabs at the start of a line, spaces elsewhere
"this is causing a conflict with snipmate plugin
"set cpoptions=+ " use $ at the end of change command
set foldmethod=indent
set foldlevel=99
set completeopt=menuone,longest,preview

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter * :syntax sync fromstart " ensure every file does syntax highlighting (full)
autocmd FileType objc set ft=cocoa

"python
autocmd FileType python set complete+=k~/.vim/syntax/python.vim "isk+=.,(
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class tags+=~/.tags/python.2.6.6.tags

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remap the leader
let mapleader = ","

map ;b :b#<CR>
nnoremap ;<space> :noh<cr>

" Tabs
map ;t :tabnew<CR>
map ;tc :tabc<CR>
map ;tn :tabn<CR>
map ;tp :tabp<CR>
map ;l :tabs<CR>
map ;tc :tabc<CR>
map ;to :tabo<CR>
map ;1 :tabn 1<CR>
map ;2 :tabn 2<CR>
map ;3 :tabn 3<CR>
map ;4 :tabn 4<CR>
map ;5 :tabn 5<CR>
map ;6 :tabn 6<CR>
map ;7 :tabn 7<CR>
map ;8 :tabn 8<CR>
map ;9 :tabn 9<CR>
map ;0 :tabn 10<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Center.com specific stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.prc set filetype=sql

" Ale
let g:ale_fixers = {'typescript': ['prettier']}

" tsuquyomi
let g:tsuquyomi_singlequate_import = 1

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_filetype_specific_completion_to_disable = {
      \   'gitcommit': 1,
      \   'typescript': 1
      \ }

"fzf
set rtp+=/usr/local/opt/fzf
nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>

"Surround
"d
let g:surround_100 = "{{ \r }}"
"g
let g:surround_103 = "{{ '\r' | translate }}"
let g:surround_71 = "{{ '\r' | translate | titlecase }}"

"Emmet
let g:user_emmet_leader_key=','

"DirDiff                                                                                                                                               
let g:DirDiffExcludes = "CVS,*.class,*.exe,.*.swp,.svn" 

"Wordpress.vim
let g:wordpress_vim_ctags_path='/usr/local/bin/ctags'
let g:wordpress_vim_wordpress_path='~/ingenio/src/media-backoffice-cms/wordpress/html'

" Select All
map ;a 1G yG

" Remove trailing white space
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR> 

" Open vimrc in split window
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" back to normal mode
inoremap jj <ESC>

" Split window stuff
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


function WinGuiSetup()
	set lines=60 " 80 lines tall
	set columns=120 " 160 cols wide

	set gfn=Lucida_Console:h10:cANSI
endfunction

function LinuxGuiSetup()
endfunction

function MacGuiSetup()
endfunction

function CommonGuiSetup()
	set gfn=Monaco:10.00
	set guioptions-=m  "remove menu bar
	set guioptions-=T  "remove toolbar
	colorscheme solarized
endfunction

function WinBaseSetup()
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" Set up Powershell
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	set shell=powershell.exe
	set shellcmdflag=-c
	set shellpipe=>
	set shellredir=>
	set tags+=c:\\data\\cvs\\tags
endfunction

function LinuxBaseSetup()
endfunction

function MacBaseSetup()
endfunction


if has("gui")
	call CommonGuiSetup()
endif

if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin"
		call MacBaseSetup()
		if has("gui")
			call MacGuiSetup()
		endif
  else
		call LinuxBaseSetup()
		if has("gui")
			call LinuxGuiSetup()
		endif
  endif
else
	"We must be on windows
	call WinBaseSetup()
	if has("gui")
		call WinGuiSetup()
	endif
endif
