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
colorscheme solarized "zenburn


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pathogen
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" turning off filetype for pathogen calls
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype on " detect the type of file
filetype plugin indent on " load filetype plugins

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme/Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark " we are using a dark background
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
set noexpandtab " real tabs please!
"set expandtab
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
au FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType python source ~/pylibs/rope.vim
autocmd filetype python source ~/.vim/bundle/pydoc/ftplugin/python_pydoc.vim
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



"DirDiff                                                                                                                                               
let g:DirDiffExcludes = "CVS,*.class,*.exe,.*.swp,.svn" 

"make green
map <Leader>mg :call MakeGreen()<cr>

"Cntrl-P
nmap <leader>t :CtrlP<CR>
nmap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>

"tasklist
map <leader>tl <Plug>TaskList

"Gundo
map <leader>g :GundoToggle<CR>

"Pep8
let g:pep8_map='<leader>8'

"SQL Complete
let g:sql_type_default = 'sqlserver'

"SuperTab
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabDefaultCompletionTypeDiscovery = ["&omnifunc:<c-x><c-o>","&completefunc:<c-x><c-n>"]
let g:SuperTabClosePreviewOnPopupClose = 1

"NerdTree
map <leader>n :NERDTreeToggle<CR>

"""""""""""""" OmniSharp Settings Start """"""""""""""""""""""""""
"let g:OmniSharp_selector_ui = 'ctrlp'  " Use ctrlp.vim
"This is the default value, setting it isn't actually necessary
let g:OmniSharp_host = "http://localhost:2000"

"Set the type lookup function to use the preview window instead of the status line
"let g:OmniSharp_typeLookupInPreview = 1

"Timeout in seconds to wait for a response from the server
let g:OmniSharp_timeout = 1

"Showmatch significantly slows down omnicomplete
"when the first match contains parentheses.
set noshowmatch

"don't autoselect first item in omnicomplete, show if only one item (for preview)
"remove preview if you don't want to see any documentation whatsoever.
set completeopt=longest,menuone,preview
" Fetch full documentation during omnicomplete requests.
" There is a performance penalty with this (especially on Mono)
" By default, only Type/Method signatures are fetched. Full documentation can still be fetched when
" you need it with the :OmniSharpDocumentation command.
" let g:omnicomplete_fetch_documentation=1

"Move the preview window (code documentation) to the bottom of the screen, so it doesn't move the code!
"You might also want to look at the echodoc plugin
set splitbelow

" Get Code Issues and syntax errors
let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']
" If you are using the omnisharp-roslyn backend, use the following
" let g:syntastic_cs_checkers = ['code_checker']
augroup omnisharp_commands
    autocmd!

    "Set autocomplete function to OmniSharp (if not using YouCompleteMe completion plugin)
    autocmd FileType cs setlocal omnifunc=OmniSharp#Complete

    " Synchronous build (blocks Vim)
    "autocmd FileType cs nnoremap <F5> :wa!<cr>:OmniSharpBuild<cr>
    " Builds can also run asynchronously with vim-dispatch installed
    autocmd FileType cs nnoremap <leader>b :wa!<cr>:OmniSharpBuildAsync<cr>
    " automatic syntax check on events (TextChanged requires Vim 7.4)
    autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

    " Automatically add new cs files to the nearest project on save
    autocmd BufWritePost *.cs call OmniSharp#AddToProject()

    "show type information automatically when the cursor stops moving
    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    "The following commands are contextual, based on the current cursor position.

    autocmd FileType cs nnoremap gd :OmniSharpGotoDefinition<cr>
    autocmd FileType cs nnoremap <leader>fi :OmniSharpFindImplementations<cr>
    autocmd FileType cs nnoremap <leader>ft :OmniSharpFindType<cr>
    autocmd FileType cs nnoremap <leader>fs :OmniSharpFindSymbol<cr>
    autocmd FileType cs nnoremap <leader>fu :OmniSharpFindUsages<cr>
    "finds members in the current buffer
    autocmd FileType cs nnoremap <leader>fm :OmniSharpFindMembers<cr>
    " cursor can be anywhere on the line containing an issue
    autocmd FileType cs nnoremap <leader>x  :OmniSharpFixIssue<cr>
    autocmd FileType cs nnoremap <leader>fx :OmniSharpFixUsings<cr>
    autocmd FileType cs nnoremap <leader>tt :OmniSharpTypeLookup<cr>
    autocmd FileType cs nnoremap <leader>dc :OmniSharpDocumentation<cr>
    "navigate up by method/property/field
    autocmd FileType cs nnoremap <C-K> :OmniSharpNavigateUp<cr>
    "navigate down by method/property/field
    autocmd FileType cs nnoremap <C-J> :OmniSharpNavigateDown<cr>

augroup END


" this setting controls how long to wait (in ms) before fetching type / symbol information.
set updatetime=500
" Remove 'Press Enter to continue' message when type information is longer than one line.
set cmdheight=2

" Contextual code actions (requires CtrlP or unite.vim)
nnoremap <leader><space> :OmniSharpGetCodeActions<cr>
" Run code actions with text selected in visual mode to extract method
vnoremap <leader><space> :call OmniSharp#GetCodeActions('visual')<cr>

" rename with dialog
nnoremap <leader>nm :OmniSharpRename<cr>
nnoremap <F2> :OmniSharpRename<cr>
" rename without dialog - with cursor on the symbol to rename... ':Rename newname'
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

" Force OmniSharp to reload the solution. Useful when switching branches etc.
nnoremap <leader>rl :OmniSharpReloadSolution<cr>
nnoremap <leader>cf :OmniSharpCodeFormat<cr>
" Load the current .cs file to the nearest project
nnoremap <leader>tp :OmniSharpAddToProject<cr>

" (Experimental - uses vim-dispatch or vimproc plugin) - Start the omnisharp server for the current solution
nnoremap <leader>ss :OmniSharpStartServer<cr>
nnoremap <leader>sp :OmniSharpStopServer<cr>

" Add syntax highlighting for types and interfaces
nnoremap <leader>th :OmniSharpHighlightTypes<cr>
"Don't ask to save when changing buffers (i.e. when jumping to a type definition)
set hidden
"""""""""""""" OmniSharp Settings End""""""""""""""""""""""""""


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

" For Ack
let g:ackprg="ag --nogroup --nocolor --column"
nmap <leader>a <Esc>:Ack!

" For pyflakes
let g:pyflakes_use_quickfix = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DBExt Profiles
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MySQL
let g:dbext_default_profile_mysql_cc = 'type=MYSQL:user=concier_cconnect:passwd=morgan:dbname=concier_ticketorders:extra=-t'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Eclim Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EclimProjectTreeActions = [
    \ {'pattern': '.*', 'name': 'Edit', 'action': 'edit'},
    \ {'pattern': '.*', 'name': 'Tab', 'action': 'tabnew'},
    \ {'pattern': '.*', 'name': 'Split', 'action': 'split'},
  \ ]


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

	let g:pydiction_location = '~/.vim/ftplugin/pydiction/complete-dict'
	let g:pydiction_menu_height = 20
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
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" XCode Helpers
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" update the :make command to tell Xcode to build
	"set makeprg=osascript\ -e\ \"tell\ application\ \\\"Xcode\\\"\"\ -e\ \"build\"\ -e\ \"end\ tell\"

	function! XcodeClean()
					silent execute ':!osascript -e "tell application \"Xcode\"" -e "Clean" -e "end tell"'
	endfunction
	command! -complete=command XcodeClean call XcodeClean()

	function! XcodeDebug()
					silent execute '!osascript -e "tell application \"Xcode\"" -e "Debug" -e "end tell"'
	endfunction
	command! -complete=command XcodeDebug call XcodeDebug()

	function! XcodeBuid()
		silent execute '!osascript -e "tell application \"Xcode\" to activate tell application \"System Events\" tell process \"Xcode\" click menu item \"Build\" of menu \"Build\" of menu bar 1 end tell end tell"'
	endfunction
	command! -complete=command XcodeBuild call XcodeBuild()

	" Command-K cleans the project
	":noremap <D-k> :XcodeClean<CR>
	" Command-Return Starts the program in the debugger
	":noremap <D-CR> :XcodeDebug<CR>
	" Command-B Builds the project
	":noremap <D-b> :XcodeBuild<CR>
	
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
