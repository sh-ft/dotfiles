set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" file navigation/management
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-vinegar'
Bundle 'pbrisbin/vim-mkdir'

" git related
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'

" additional syntax files
"Bundle 'Keithbsmiley/rspec.vim'
"Bundle 'kchmck/vim-coffee-script'
"Bundle 'mmalecki/vim-node.js'
"Bundle 'mustache/vim-mustache-handlebars'
"Bundle 'heartsentwined/vim-emblem'
"Bundle 'pangloss/vim-javascript'
"Bundle 'slim-template/vim-slim'
"Bundle 'tpope/vim-haml'
"Bundle 'tpope/vim-markdown'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'sheerun/vim-polyglot'
Bundle 'gkz/vim-ls'
Bundle 'kylef/apiblueprint.vim'
Bundle 'mattn/emmet-vim'

" Ruby related
"Bundle 'ecomba/vim-ruby-refactoring'
"Bundle 'tpope/vim-bundler'
"Bundle 'tpope/vim-rails'
"Bundle 'tpope/vim-rake'
"Bundle 'tpope/vim-rvm'

" text objects
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'bootleq/vim-textobj-rubysymbol'
Bundle 'michaeljsmith/vim-indent-object'

" motions
Bundle 'bkad/CamelCaseMotion'

" code completion
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'pjg/eclim.vim'

" searching
Bundle 'rking/ag.vim'
Bundle 'nelstrom/vim-visual-star-search'

" general text-editing improvements
Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'godlygeek/tabular'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tomtom/tcomment_vim'
Bundle 'itspriddle/vim-stripper'

" general vim improvements
Bundle 'edsono/vim-matchit'
Bundle 'omh/Kwbd.vim'
Bundle 'sickill/vim-pasta'
Bundle 'sjl/gundo.vim'

Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'justinmk/vim-sneak'
Bundle 'nelstrom/vim-qargs'
Bundle 'nathanaelkane/vim-indent-guides'

" statusline (and related)
Bundle 'vim-airline/vim-airline-themes'
Bundle 'airblade/vim-gitgutter'

" external applications
"Bundle 'rizzatti/funcoo.vim'
"Bundle 'rizzatti/dash.vim'

" color schemes
Bundle 'junegunn/seoul256.vim'
Bundle 'flazz/vim-colorschemes'


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


" BASIC SETTINGS

" no vi compatible mode
set nocompatible

" you can change buffers without saving
set hidden

" do not autoresize windows
set noequalalways

" Resize splits when the window is resized
au VimResized * :wincmd =

" split below/right
set splitbelow
set splitright

" no backup files
set nobackup nowritebackup

" show line numbers
set number
set numberwidth=2

" also show relative numbers, besides current line (Vim 7.4+)
set relativenumber

" highlight searches
set hlsearch

" find as you type
set incsearch

" smartcase -- normally ignores case, but when we type uppercase character in search box it will be CASE SENSITIVE
set ignorecase smartcase

" always display current cursor position
set ruler

" make it obvious where 120 characters is
set textwidth=120
set colorcolumn=+1

" display incomplete commands
set showcmd

" colorscheme
"if $SSH_CONNECTION && &t_Co < 256
"  colorscheme koehler
"else
"  set t_Co=256
"  let g:seoul256_background = 236
"  colorscheme seoul256
"endif
"
colorscheme hybrid_material

" enable filetype detection and filetype-specific plugins and indenting
filetype plugin indent on

" do not wrap lines
set nowrap

" wrap around beginning and end of file when searching
set wrapscan

" autoindent
set autoindent

" by default TABS are standard 8 characters filled with SPACES (expandtab) with softtabstop at 2 (TAB moves 2 characters); indent stays at 2 characters (shiftwidth)
set tabstop=8
set softtabstop=2
set shiftwidth=2
set expandtab

" round indent to multiple of 'shiftwidth' (applies to > and < commands)
set shiftround

" set virtual edit only when in visual block selection mode
set virtualedit=block

" the /g flag on :s substitutions by default
set gdefault

" keep 3 lines (top/bottom) for scope when scrolling
set scrolloff=3
set sidescrolloff=3

" avoid moving cursor to BOL when jumping around
set nostartofline

" briefly jump to a parenthesis once it's balanced (but only for 200ms)
set showmatch
set matchtime=2

" keep longer vim commands history
set history=1000

" show available TAB-completions in command line
set wildmenu

" have TAB-completion behave similarly to a shell (i.e. complete the longest part, then cycle through the matches)
set wildmode=longest:full,full

" ignore these files when completing names and in Explorer
set wildignore=*.o,*.out,*.obj,.git,*.rbc,*.class,.svn,*.gem                 " output & scm files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz                      " archive files
set wildignore+=*.jpg,*.jpeg,*.png,*.xpm,*.gif,*.bmp                         " pictures
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/* " bundler and sass
set wildignore+=*/log/*,*.log,*/coverage/*                                   " logs and rcov
set wildignore+=*.swp,*~,._*                                                 " swp and backup files
set wildignore+=*/dist/*

" short messages in command line (so that they don't overflow and require pressing <ENTER>) (h :shortmess)
set shortmess=aoOtI

" time out on key codes but not on mappings
set notimeout
set ttimeout
set ttimeoutlen=10

" even faster ESC-aping (https://powerline.readthedocs.org/en/latest/tipstricks.html#vim)
augroup FastEscape
  autocmd!
  au InsertEnter * set timeoutlen=0
  au InsertLeave * set timeoutlen=1000
augroup END

" allow backspacing over autoindent, EOL, and BOL
set backspace=2

" never write unless requested
set noautowrite
set noautowriteall

" automatically re-read files files changed outside of vim
set autoread

" write swap files after 2 seconds of inactivity
set updatetime=2000

" global directory for .swp files
set directory=$HOME/.vim/tmp/

" yes/no/cancel prompt if closing with unsaved changes
set confirm

" persistent undo (preserved after restarting vim)
if v:version >= 703
  set undofile
  set undodir=$HOME/.vim/tmp/
endif

" mouse support in xterm
set mouse=a

" inverse space as a vsplit character (instead of |)
set fcs+=vert:\ " the space after the backslash is intentional

" always start on first line when editing git commit message
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])


" SYNTAX HIGHLIGHTING

" syntax highlight on
syntax on

" faster Ruby syntax highlighting
let ruby_no_expensive=1

" use the old Regexp engine (used by the syntax highlighting, for example) (this makes vim about 100x faster)
set regexpengine=1


" FILE TYPES

" auto-completion
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html,markdown set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

" special auto-completion settings for Ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" do not auto-indent HTML-like files
autocmd BufEnter *.html setlocal indentexpr=
autocmd BufEnter *.htm setlocal indentexpr=
autocmd BufEnter *.html.erb setlocal indentexpr=

" YAML files read as Ruby
augroup filetypedetect
  autocmd BufNewFile,BufRead *.yml setf eruby
augroup END

" explicitly set filetype to Ruby for some well-known files
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,Capfile,Guardfile,.Guardfile,config.ru,.railsrc,.irbrc,.pryrc} set ft=ruby

" explicitly set filetype to slim for slim view files (not sure why it's needed...)
au BufRead,BufNewFile {*.html.slim} set filetype=slim

" 4 spaces for TAB in CSS files
autocmd BufEnter *.css setlocal softtabstop=4 shiftwidth=4

" 2 spaces for TAB in JS files
autocmd User Rails/**/*.js set softtabstop=2
autocmd User Rails/**/*.js set tabstop=2
autocmd User Rails/**/*.js set shiftwidth=2

" set various characters to be treated as a part of words
autocmd FileType lisp,clojure,html,xml,xhtml,haml,eruby,css,scss,sass,javascript,coffee setlocal iskeyword+=-,$,#



" ADVANCED SETTINGS

" % should also match if/else/begin/end/etc.
runtime macros/matchit.vim

" reposition the cursor in the buffer after reopening vim
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif


" PLUGINS

" [ag.vim] (aka 'the_silver_searcher')
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  let g:agprg='ag --column --smart-case'
  let g:aghighlight=1
endif

" [autoclose.vim]
let g:AutoCloseProtectedRegions = ["Comment"]

" [dash.vim]
let g:dash_map = {
  \ 'ruby' : 'rails'
  \ }

" [vim-ragtag]
inoremap <M-o> <Esc>o
inoremap <C-j> <Down>
let g:ragtag_global_maps = 1

" [ctrlp.vim]
let g:ctrlp_cache_dir = $HOME.'/.vim/tmp/.ctrlp_cache'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\/tmp',
  \ 'file': '\/public/stylesheets/.*css$'
  \ }

" [fugitive.vim] auto clean fugitive buffers
au BufReadPost fugitive://* set bufhidden=delete


" [vim-gitgutter] always show sign column (by adding a dummy sign)
function! ShowSignColumn()
  sign define dummy
  execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
endfunc
au BufRead,BufNewFile * call ShowSignColumn()

" [vim-gitgutter] disable eager execution (will only run on file read/write))
let g:gitgutter_eager = 0

" [vim-gitgutter] use 'raw' grep
let g:gitgutter_escape_grep = 1

" [YouCompleteMe] use Eclim for TAB-autocompletion
let g:EclimCompletionMethod = 'omnifunc'

" [YouCompleteMe] collect identifiers from comments and strings
let g:ycm_collect_identifiers_from_comments_and_strings = 1

" [YouCompleteMe] collect identifiers from tags file
let g:ycm_collect_identifiers_from_tags_files = 1

" [YouCompleteMe] don't add default identifiers based on vim filetype
let g:ycm_seed_identifiers_with_syntax = 0

" [YouCompleteMe] work nicely with floobits' plugin
let g:ycm_allow_changing_updatetime = 0

" [Eclim] disable Ruby validation
let g:EclimRubyValidate = 0

" [rainbow_parentheses.vim]
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]


" KEY MAPPINGS

" have Y behave analogously to D and C rather than to dd and cc (which is already done by yy)
noremap Y y$

" <F2> to save current session in tmp/current.vim
map <F2> :mksession! tmp/current.vim<cr>
imap <F2> <esc><F2>
vmap <F2> <esc><F2>

" <F4> to turn line wrap on/off
map <F4> :set wrap!<cr>
imap <F4> <esc><F4>
vmap <F4> <esc><F4>

" <F5> to flush CtrlP cache
map <F5> :ClearCtrlPCache<cr>
imap <F5> <esc><F5>
vmap <F5> <esc><F5>

" <F6> for gundo.vim
nmap <F6> :GundoToggle<cr><cr>
imap <F6> <esc>:GundoToggle<cr><cr>

" <F8> to turn off the highlight search & redraw screen, sign column and statusline
map <F8> :syntax sync fromstart<cr>:nohlsearch<cr>:GitGutter<cr>:redrawstatus!<cr>:redraw!<cr>
imap <F8> <esc><F8>
vmap <F8> <esc><F8>

" <F10> to close current buffer but don't close the window (Kwbd.vim)
nmap <F10> :Kwbd<cr>

" <F3> to toggle the paste mode (when vim either adds or not spaces in the front of lines)
set pastetoggle=<F3>

" <F12> to toggle the display of invisible characters ($\t)
nmap <F12> :set list!<bar>set list?<cr>

" swap ` with ' (so that ' will jump to line *and* column)
nnoremap ' `
nnoremap ` '

" scroll faster & move cursor too
nnoremap <c-e> 3<c-e>3j
nnoremap <c-y> 3<c-y>3k
vnoremap <c-e> 3<c-e>3j
vnoremap <c-y> 3<c-y>3k

" move faster between windows
nmap <c-h> <c-w>h
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l

" improve movement on wrapped lines
nnoremap j gj
nnoremap k gk
nnoremap $ g$
nnoremap ^ g^
nnoremap 0 g0
vnoremap j gj
vnoremap k gk
vnoremap $ g$
vnoremap ^ g^
vnoremap 0 g0

" go to home/end using capitalized directions
noremap H ^
noremap L $

" make g$/g^/g0 go to 'true' home/end
nnoremap g$ $
nnoremap g^ ^
nnoremap g0 0
vnoremap g$ $
vnoremap g^ ^
vnoremap g0 0

" K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" gw to swap the current word with the one next to it
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<cr>''

" CTRL+s always saves file
nmap <c-s> :w<cr>
vmap <c-s> <esc><c-s>
imap <c-s> <esc><c-s>

" CTRL+q quits
nmap <c-q> :q<cr>
imap <c-q> <esc><c-q>

" use sane regexes
nnoremap / /\v
vnoremap / /\v

" don't move on *
nnoremap * *<c-o>

" keep search matches in the middle of the window
nnoremap n nzzzv
nnoremap N Nzzzv

" same when jumping around
nnoremap g; g;zz
nnoremap g, g,zz

" gi already moves to 'last place you exited insert mode', so we'll map gI to something similar: move to last change
nnoremap gI `.

" lists navigation
nnoremap <left> :cprev<cr>zvzz
nnoremap <right> :cnext<cr>zvzz
nnoremap <up> :lprev<cr>zvzz
nnoremap <down> :lnext<cr>zvzz

" Motions for next/last objects: 'din(' will go to next () pair and delete its contents. 'dil(' will go to previous ()
onoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
xnoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
onoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>
xnoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>

onoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
xnoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
onoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>
xnoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>

function! s:NextTextObject(motion, dir)
  let c = nr2char(getchar())

  if c ==# "b"
    let c = "("
  elseif c ==# "B"
    let c = "{"
  elseif c ==# "d"
    let c = "["
  endif

  exe "normal! ".a:dir.c."v".a:motion.c
endfunction


" INSERT MODE KEY MAPPINGS

" Ruby: bind control-l to hashrocket
imap <C-l> <Space>=><Space>'

" Ruby: convert word into Ruby symbol
imap <C-k> <C-o>b:<Esc>Ea

" basic readline shortcuts
inoremap <c-a> <esc>I
inoremap <c-e> <esc>A

" map Ctrl+p to ESC (common misstype when you press Ctrl+[ for ESC)
inoremap <c-p> <esc>


" VISUAL MODE KEY MAPPINGS

" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" press Shift+P while in visual mode to replace the selection without overwriting the default register
vmap P p :call setreg('"', getreg('0')) <cr>

" make backspace work sanely in visual mode
vnoremap <bs> x

" select entire buffer
nnoremap vaa ggvGg_
nnoremap Vaa ggVG

" fix linewise visual selection of various text objects
nnoremap VV V
nnoremap Vit vitVkoj
nnoremap Vat vatV
nnoremap Vab vabV
nnoremap VaB vaBV


" COMMAND LINE KEY MAPPINGS

" bash like keys for the command line
cnoremap <c-a> <Home>
cnoremap <c-e> <End>
cnoremap <c-p> <Up>
cnoremap <c-n> <Down>
cnoremap <c-b> <Left>
cnoremap <c-f> <Right>
cnoremap <c-d> <Del>
cnoremap <c-k> <C-\>estrpart(getcmdline(), 0, getcmdpos()-1)<cr>

" swap <Up>/<Down> with <PageUp>/<PageDown>
cnoremap <Up> <S-Up>
cnoremap <PageUp> <Up>
cnoremap <Down> <S-Down>
cnoremap <PageDown> <Down>



" LEADER KEY MAPPINGS

" leader/localleader mappings
let mapleader = "\<space>"
let localmapleader = "\\"

" select all text in current buffer
nmap <leader>a ggVG

" run Dash (on MAC) to search for word under cursor
nmap <silent> <leader>d <Plug>DashSearch

" upper/lower word
nmap <leader>u mQviwU'Q
nmap <leader>l mQviwu'Q

" upper/lower first char of word
nmap <leader>U mQgewvU'Q
nmap <leader>L mQgewvu'Q

" fugitive.vim
nmap <leader>gb :Gblame<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gd :Gdiff<cr>
nmap <leader>gl :!git l<cr>
nmap <leader>gp :Git push<cr>
nmap <leader>gr :Gremove!<cr>
nmap <leader>gs :Gstatus<cr>
nmap <leader>gw :Gwrite<cr>

" ctrlp.vim
"map <leader>t :CtrlP<cr>
"map <leader>b :CtrlPBuffer<cr>
map <leader>h :CtrlPMRU<cr>

" quit current buffer
map <leader>q :q<cr>

" save file
map <leader>w :w<cr>

" Sudo save file
map <leader>W :SudoWrite<cr>

" [vim-rails] Rake
map <leader>rr :.Rake<cr>

" system clipboard interaction
noremap <leader>y "*y
noremap <leader>Y "*y$
noremap <leader>p :set paste<cr>"*p<cr>:set nopaste<cr>
noremap <leader>P :set paste<cr>"*P<cr>:set nopaste<cr>

" easier splits
noremap <leader>s <C-w>s
noremap <leader>v <C-w>v

" window close
noremap <leader>c <C-w>c

" adjust viewports to the same size
map <leader>= <C-w>=

" maximize viewport
map <leader>\| <C-w>\|

" underline current line
nmap <silent> <leader>- :t.<CR>Vr-
nmap <silent> <leader>_ :t.<CR>Vr=

" quick insertion of newline in normal mode
nnoremap <silent> <cr> :-1put=''<cr><down>

" convert file to utf-8 and cleanup whitespace garbage
map <leader>xx :call CleanupFileConvertToUnixUtf8()<cr>

function! CleanupFileConvertToUnixUtf8()
  " insert 'tabstop' characters instead of <TAB>s
  execute '%retab!'
  " UNIX fileformat
  set fileformat=unix
  " UTF-8 encoding by default
  set fileencoding=utf-8
  " cleanup trailing whitespace
  execute '%s/\s\+$//e'
endfunction

" camelcasemotion
call camelcasemotion#CreateMotionMappings('<leader>')


" STATUSLINE

" always show the status line
set laststatus=2

" don't show mode text (which vim shows below the statusline)
set noshowmode

" [vim-airline] use Powerline fonts
" let g:airline_powerline_fonts = 1

" [vim-airline] set theme to the one resembling vim-powerline
let g:airline_theme = 'powerlineish'

" [vim-airline] collapse inactive segments
let g:airline_inactive_collapse = 1

" [vim-airline] shorter mixed indentation message
let g:airline#extensions#whitespace#mixed_indent_format = 'indent[%s]'

" [vim-airline] don't show gitgutter's changed hunks number
let g:airline#extensions#hunks#enabled = 0

" [vim-airline] don't show git branch (with fugitive.vim)
let g:airline#extensions#branch#enabled = 0

" [vim-airline] patch 'powerlineish' colors
let g:airline_theme_patch_func = 'AirlineThemePatch'

function! AirlineThemePatch(palette)
  if g:airline_theme == 'powerlineish'
    " set inactive colors to be a light grey text on dark grey background (so it's actually visible)
    for colors in values(a:palette.inactive)
      let colors[2] = 247
      let colors[3] = 237
    endfor
  endif
endfunction

let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

