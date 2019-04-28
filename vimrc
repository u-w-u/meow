" vim: set sw=2 ts=2 sts=2 et tw=80 foldmarker={,} foldlevel=0 foldmethod=marker :

"   A___A           __  __ ___ _____      __ 
"  / u u \_____    |  \/  | __/ _ \ \    / /
"  \ =w=   ____~\  | |\/| | _| (_) \ \/\/ /
"  (_m_m__(______) |_|  |_|___\___/ \_/\_/ By U-w-U
"
"  @version: 1.0
"  @autor: E. Manuel Cerrón Angeles

if &compatible
	set nocompatible
endif

set runtimepath+=/home/uwu/.vim/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/uwu/.vim/.cache/dein')
	call dein#begin('/home/uwu/.vim/.cache/dein')

	" Let dein manage dein
	" Required:
	call dein#add('/home/uwu/.vim/.cache/dein/repos/github.com/Shougo/dein.vim')

	" UI
	call dein#add('ryanoasis/vim-devicons')
	call dein#add('itchyny/lightline.vim')
	" DENITE
	call dein#add('Shougo/denite.nvim')
	call dein#add('Shougo/junkfile.vim')
	call dein#add('Shougo/neomru.vim')
	" COMPLENTION
	call dein#add('ncm2/ncm2')
	call dein#add('roxma/nvim-yarp')
	if !has('nvim')
		call dein#add('roxma/vim-hug-neovim-rpc')
	endif
	call dein#add('SirVer/ultisnips')
	call dein#add('honza/vim-snippets')
	call dein#add('ncm2/ncm2-ultisnips')
	call dein#add('ncm2/ncm2-path')
	" EXPLORER
	call dein#add('Shougo/defx.nvim')
	call dein#add('kristijanhusak/defx-git')
	call dein#add('kristijanhusak/defx-icons')
	" FREE DISTRACTION MODE
	call dein#add('junegunn/goyo.vim')
	call dein#add('junegunn/limelight.vim')
	" GIT
	call dein#add('tpope/vim-fugitive')
	call dein#add('airblade/vim-gitgutter')
	call dein#add('gregsexton/gitv')
	" LANGUAGE: vim
	call dein#add('Shougo/neco-vim')
	" LINTER
	call dein#add('w0rp/ale.git')
	" EDITING
	call dein#add('chrisbra/NrrwRgn')
	call dein#add('tpope/vim-surround')
	call dein#add('scrooloose/nerdcommenter')
	call dein#add('godlygeek/tabular')
	" TAGBAR
	call dein#add('majutsushi/tagbar')
	call dein#add('Raimondi/delimitMate')
	"call dein#add('StanAngeloff/php.vim')
	"call dein#add('leafgarland/typescript-vim')
	" LANGUAGE: html
	call dein#add('mattn/emmet-vim')
	" LANGUAGE: go
	call dein#add('fatih/vim-go',{
				\'rev': 'v1.20', 'on_ft': 'go'})
	" Required:
	call dein#end()
	call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" Platform OS indentification {
let s:is_windows = has('win32') || has('win64')
let s:is_cygwin = has('win32unix')
let s:is_macvim = has('gui_macvim')
" }

" Editor {

" font and font size
if has("gui_running")
  if has("gui_gtk2") || has("gui_gtk3")
      set guifont=SauceCodePro\ Nerd\ Font\ 12
  elseif has("gui_macvim")
      set guifont=SauceCodePro\ Nerd\ Font:h12
  elseif has("gui_win32")
      set guifont=SauceCodePro_NF:h12:cDEFAULT
  endif
endif

" Habilitar el uso del ratón automáticamente.
if has('mouse')
    set mouse=a
endif
if !has('nvim')
  set ttymouse=xterm2
endif

" Esconder el cursor mientras se escribe. 
set mousehide

" Codificacion del archivo
scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,utf-16le,cp1252,iso-8859-15
if s:is_windows
    set fileformats=dos,unix,mac
else
    set fileformats=unix,dos,mac
endif

" Aumenta la historia (por defecto es 20)
set history=1000

" Para no usar "+ para copy-paste, usar directamente para pegar gP y para copiar y
if has('clipboard')
    if has('unnamedplus')
        set clipboard=unnamedplus
    else
        set clipboard=unnamed
    endif
endif

" unix/windows compatibility
set viewoptions=folds,options,cursor,unix,slash

" auto reload if file saved externally
set autoread

" activa el mode de introducir lineas del tipo vim: en la cabecera.
set modeline
set modelines=5

" Poder cambiar de bufer sin guardar
set hidden

" Graba automáticamente un archivo al salir de un buffer modificado
set autowrite

" No crear archivo de respaldo
set nobackup

" No escrbir en el archivo de respaldo
set nowritebackup

" Buffer no guardado en memoria
set noswapfile

" directorio donde se encuentra los tags generados por ctags.
" el directorio actual :pwd
set tags=tags;
set showfulltag

" identado Automático.
set autoindent

" Cambia de modo de pegar, desactiva autoident
set pastetoggle=<F2>

" Do not wrap long lines
set nowrap

" Envolver automaticamente al terminar la linea, pasar a otra linea cuando finaliza.
" set whichwrap=b,s,h,l,<,>,[,]
" Maxima anchura de una linea
" set tw=100
" No cortar la linea despues de los tw=100 caracteres
set wm=0
" permite retroceso en todo, modo inserción
set backspace=indent,eol,start

set complete-=i
set nrformats-=octal
set smarttab                    " Use shiftwidth to enter tabs
set shiftwidth=4                " Use indents of 4 spaces
set expandtab                   " Tabs are spaces, not tabs
set tabstop=4                   " An indentation every four columns
set softtabstop=4               " Let backspace delete indent
set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)

" Auto replegado de codigo (folding)
set foldenable
set foldmethod=syntax
set foldlevelstart=0
set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds
"let vimsyn_folding='af'

" }

" Mapping {

" Leader
let mapleader = ','
"let maplocalleader = '\'        " Configuación Esencial

" salir del modo insercion rapidamene
inoremap jk <Esc>

" guardar todo con ESC
" map <Esc> :wa<CR>

" `gf` opens file under cursor in a new vertical split
nnoremap gf :vertical wincmd f<CR>

" vscode cycling open buffers
nnoremap <silent> <C-TAB> :bnext<CR>

" vscode Go to Symbol
nnoremap <silent> <C-S-TAB> :bnext<CR>

" Togle hide tool and menu
" TODO: No funciona el togle
nmap <silent><C-F11> :if &guioptions =~# 'T' <Bar>
\set guioptions-=T <Bar>
\set guioptions-=m <bar>
\else <Bar>
\set guioptions+=T <Bar>
\set guioptions+=m <Bar>
\endif<CR>

"vim over ssh
vmap "+y :!xclip -f -sel clip
map "+p :r!xclip -o -sel clip

if exists(':tnoremap')
  tnoremap <Esc> <C-\><C-n>
endif

" }

" Workbench {

" Start Screen
set shortmess+=I

if has('syntax')
    syntax enable
endif


" ColorScheme
if has('gui') || has('termguicolors')
    set termguicolors
    " force 24-bit colors:
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
if has('gui_running') != 1
    " set t_Co=256
    " lxterminal
    " Se puede cambiar el color del cursor
    " if &term =~ "xterm\\|rxvt"
    "     " use an orange cursor in insert mode
    "     let &t_SI = "\<Esc>]12;orange\x7"
    "     " use a red cursor otherwise
    "     let &t_EI = "\<Esc>]12;grey\x7"
    " endif
    let &t_SI = "\<Esc>[6 q"
    let &t_SR = "\<Esc>[4 q"
    let &t_EI = "\<Esc>[2 q"
endif

set background=dark
colorscheme gruvbox


" Restaurar el cursor a la posición anterior de la sesión
function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction

augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END

" Resaltar linea actual en todo momento
" set cursorline

" Resaltar linea actual solo en insert mode
autocmd InsertEnter * set cursorline
autocmd InsertLeave * set cursorline!

" Resaltar la columna actual solo en insert mode
" autocmd InsertEnter * set cursorcolumn
" autocmd InsertLeave * set cursorcolumn!

" SignColumn con el mismo fondo
" highlight clear SignColumn

" Mismo color de fondo para la actual linea en relative mode
" highlight clear LineNr

" Quitar el resaltado de numero de linea.
" highlight clear CursorLineNr

" resaltar el numero de linea actual con un bold
highlight CursorLineNR cterm=bold
augroup CLNRSet
    autocmd! ColorScheme * highlight CursorLineNR cterm=bold
augroup END

" Mostrar numero de linea.
set number

" Mostrar coincidente brackets/parenthesis
set showmatch

" No mostrar --INSERT--
set noshowmode

" No mostrar 'back to original' cuando se autocompleta
set shortmess+=c

" Round indent to multiple of 'shiftwidth'.  Applies to > and < commands.
set shiftround

" Show (partial) command in the last line of the screen.
set showcmd

" command-line completion operates in an enhanced
set wildmenu
set wildmode=list:longest,full
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*
set wildignore+=*.swp,*~,._*

" Lines to scroll when cursor leaves screen
set scrolljump=3

" Minimum lines to keep above and below cursor
set scrolloff=3

" Show status line always
set laststatus=2

"Resaltado de espacios en blanco problematicos
"set list
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\

" Open :vs in right
set splitright
" }

" lightline {{{
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
    \ }

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyGit()
  return (strlen(fugitive#head()) > 0) ? ' ' . fugitive#head() : ''
endfunction


function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

let g:lightline.component_function = {
      \   'gitbranch': 'MyGit',
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \ }

" }}}

" denite {
nmap <space> [denite]
nnoremap [denite] <nop>
nnoremap <silent> [denite]/ :<C-u>Denite -no-quit -buffer-name=search grep:.<cr>
nnoremap <silent> [denite]: :<C-u>Denite command_history<cr>
nnoremap <silent> [denite]b :<C-u>Denite buffer<cr>
nnoremap <silent> [denite]e :<C-u>Denite -buffer-name=recentf file_mru<cr>
nnoremap <silent> [denite]f :<C-u>Denite file/rec<cr>
nnoremap <silent> [denite]u :<C-u>Denite change<cr>
nnoremap <silent> [denite]c :<C-u>Denite colorscheme<cr>
nnoremap <silent> [denite]k :<C-u>Denite command<cr>
nnoremap <silent> [denite]cd :<C-u>Denite directory_rec<cr>
nnoremap <silent> [denite]n :<C-u>Denite file<cr>
nnoremap <silent> [denite]o :<C-u>Denite file_old<cr>
nnoremap <silent> [denite]l :<C-u>Denite file_point<cr>
"nnoremap <silent> [denite]l :<C-u>Denite -auto-resize -buffer-name=line line<cr>
nnoremap <silent> [denite]9 :<C-u>Denite filetype<cr>
nnoremap <silent> [denite]g :<C-u>Denite grep<cr>
nnoremap <silent> [denite]h :<C-u>Denite help<cr>
"nnoremap <silent> [denite]s :<C-u>Denite -quick-match buffer<cr>
"NO FUNCIONA
nnoremap <silent> [denite]m :<C-u>Denite menu<cr>
"nnoremap <silent> [denite]m :<C-u>Denite -auto-resize -buffer-name=mappings mapping<cr>
nnoremap <silent> [denite]p :<C-u>DeniteBufferDir grep<cr>
"NO FUNCIONA
nnoremap <silent> [denite]t :<C-u>Denite outline<cr> 
nnoremap <silent> [denite]y :<C-u>Denite register<cr>
"nnoremap <silent> [denite]y :<C-u>Denite -buffer-name=yanks history/yank<cr>
nnoremap <silent> [denite]z :<C-u>Denite output<cr>
nnoremap <silent> [denite]w :<C-u>Denite tag<cr>
"
nnoremap <silent> [denite]j :<C-u>Denite junkfile junkfile:new<cr>

let g:junkfile#directory = expand('~/Dropbox/Notas')

"if exists('denite#custom#map')

call denite#custom#map(
            \ 'insert',
            \ '<C-j>',
            \ '<denite:move_to_next_line>',
            \ 'noremap'
            \)
call denite#custom#map(
            \ 'insert',
            \ '<C-k>',
            \ '<denite:move_to_previous_line>',
            \ 'noremap'
            \)
call denite#custom#map(
            \ 'insert',
            \ '<C-v>',
            \ '<denite:paste_from_default_register>',
            \ 'noremap'
            \)
call denite#custom#map(
            \ 'insert',
            \ '<C-p>',
            \ '<denite:do_action:preview>',
            \ 'noremap'
            \)
" Change matchers.
"call denite#custom#source(
"            \ 'file_mru', 'matchers', ['matcher_fuzzy', 'matcher_project_files'])
"call denite#custom#source(
"            \ 'file_rec', 'matchers', ['matcher_cpsm'])
" Change sorters.
"call denite#custom#source(
"            \ 'file_rec', 'sorters', ['sorter_sublime'])
" Add custom menus
" Ag command on grep source
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])


let s:menus = {}

let s:menus.zsh = {
            \ 'description': 'Edit your import zsh configuration'
            \ }
let s:menus.zsh.file_candidates = [
            \ ['zshrc', '~/.config/zsh/.zshrc'],
            \ ['zshenv', '~/.zshenv'],
            \ ]

let s:menus.my_commands = {
            \ 'description': 'Example commands'
            \ }
let s:menus.my_commands.command_candidates = [
            \ ['Split the window', 'vnew'],
            \ ['Open zsh menu', 'Denite menu:zsh'],
            \ ]

call denite#custom#var('menu', 'menus', s:menus)

" Agregar iconos con dev-icons
call denite#custom#source('file_mru,file/rec,file_old,buffer,directory_rec', 'converters', ['devicons_denite_converter'])

"endif
" }

" ncm2 {
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
"set completeopt=noinsert,menuone,noselect
set completeopt=noinsert,menuone
let g:ncm2#match_highlight = 'mono-space'
" }

" UltiSnips + ncm2 { 
" We don't really want UltiSnips to map these two, but there's no option for
" that so just make it map them to a <Plug> key.
let g:UltiSnipsExpandTrigger       = "<Plug>(ultisnips_expand_or_jump)"
let g:UltiSnipsJumpForwardTrigger  = "<Plug>(ultisnips_expand_or_jump)"
" Let UltiSnips bind the jump backward trigger as there's nothing special
" about it.
let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"
" Try expanding snippet or jumping with UltiSnips and return <Tab> if nothing
" worked.
function! UltiSnipsExpandOrJumpOrTab()
  call UltiSnips#ExpandSnippetOrJump()
  if g:ulti_expand_or_jump_res > 0
    return ""
  else
    return "\<Tab>"
  endif
endfunction
" First try expanding with ncm2_ultisnips. This does both LSP snippets and
" normal snippets when there's a completion popup visible.
inoremap <silent> <expr> <Tab> ncm2_ultisnips#expand_or("\<Plug>(ultisnips_try_expand)")
" If that failed, try the UltiSnips expand or jump function. This handles
" short snippets when the completion popup isn't visible yet as well as
" jumping forward from the insert mode. Writes <Tab> if there is no special
" action taken.
inoremap <silent> <Plug>(ultisnips_try_expand) <C-R>=UltiSnipsExpandOrJumpOrTab()<CR>
" Select mode mapping for jumping forward with <Tab>.
snoremap <silent> <Tab> <Esc>:call UltiSnips#ExpandSnippetOrJump()<cr>
" }

" Windows {
" Set current name file in title
set title
set titleold=
" Config GUI
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
" }

" Files {


" }

" Task Manager {

" }

" Zen Mode {
" Default: 0.5
let g:limelight_default_coefficient = 0.7
function! s:markdown_room()
    set linespace=5
    if has('gui_running')
        "set guifont='. s:configure['font']
    endif
    "colorscheme '. g:configuration#ui['colorscheme-light']
endfunction

function! s:goyo_enter()
    "set fullscreen
    set linespace=5
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar
    Limelight
    if !has("gui_running")
        return
    endif
    let is_mark_or_rst = &filetype == "markdown" || &filetype == "rst" || &filetype == "text" || &filetype == "mkd" || &filetype == "md"
    if is_mark_or_rst
        call s:markdown_room()
    endif
    let b:quitting = 0
    autocmd QuitPre <buffer> let b:quitting = 1
endfunction
function! s:goyo_leave()
    Limelight!
    "colorscheme '.g:configuration#ui['colorscheme-dark']
    set linespace=0
    "if g:configuration#ui['gui-minimal'] != 'true'
        "set guioptions+=m  "add menu bar
       " set guioptions+=T  "add toolbar
       " set guioptions+=r  "add right-hand scroll bar
       " set guioptions+=L  "add left-hand scroll bar
    "endif
    if has('gui_running')
        "set guifont='.g:configuration#ui['font']
    endif
    if !has("gui_running")
        return
    endif
    " Asegura salir con :q
    if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
        qa
    endif
endfunction

let g:goyo_width=90             "(default: 80)

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

nnoremap <Leader><Space> :Goyo<CR>


" }

" File Explorer {

 " :Defx -columns=icons:filename:type
let g:defx_icons_enable_syntax_highlight = 1

let g:defx_git#indicators = {
  \ 'Modified'  : '✹',
  \ 'Staged'    : '✚',
  \ 'Untracked' : '✭',
  \ 'Renamed'   : '➜',
  \ 'Unmerged'  : '═',
  \ 'Ignored'   : '☒',
  \ 'Deleted'   : '✖',
  \ 'Unknown'   : '?'
  \ }

autocmd FileType defx call s:defx_my_settings()

function! s:defx_my_settings() abort
  " Define mappings
  nnoremap <silent><buffer><expr> o
  \ defx#do_action('open')
  nnoremap <silent><buffer><expr> <CR>
  \ defx#do_action('drop')
  nnoremap <silent><buffer><expr> c
  \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> m
  \ defx#do_action('move')
  nnoremap <silent><buffer><expr> p
  \ defx#do_action('paste')
  nnoremap <silent><buffer><expr> l
  \ defx#do_action('open')
  nnoremap <silent><buffer><expr> E
  \ defx#do_action('open', 'vsplit')
  nnoremap <silent><buffer><expr> P
  \ defx#do_action('open', 'pedit')
  nnoremap <silent><buffer><expr> K
  \ defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N
  \ defx#do_action('new_file')
  nnoremap <silent><buffer><expr> d
  \ defx#do_action('remove')
  nnoremap <silent><buffer><expr> r
  \ defx#do_action('rename')
  nnoremap <silent><buffer><expr> !
  \ defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> x
  \ defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yy
  \ defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> .
  \ defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ;
  \ defx#do_action('repeat')
  nnoremap <silent><buffer><expr> h
  \ defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> ~
  \ defx#do_action('cd')
  nnoremap <silent><buffer><expr> q
  \ defx#do_action('quit')
  nnoremap <silent><buffer><expr> <Space>
  \ defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> *
  \ defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> j
  \ line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k
  \ line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-l>
  \ defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>
  \ defx#do_action('print')
  nnoremap <silent><buffer><expr> cd
  \ defx#do_action('change_vim_cwd')
endfunction

nnoremap <Leader>f :Defx -columns=git:mark:icons:filename:type -split=vertical -winwidth=50 -direction=topleft -toggle <CR>
nnoremap <Leader>e :Defx -columns=git:icons:filename:type -split=vertical -winwidth=30 -direction=topleft -toggle <CR>
 
" }

" Search {
    set incsearch                   " Buscar mientras se escribe la búsqueda
    set hlsearch                    " Resaltar los términos buscados
    set ignorecase                  " Busqueda case insensitive
    set smartcase                   " Busqueda case sensitive cuendo uc esta presente
    if executable('ack')
        set grepprg=ack\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow\ $*
        set grepformat=%f:%l:%c:%m
    endif
    if executable('ag')
        set grepprg=ag\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow
        set grepformat=%f:%l:%c:%m
    endif
" }

" Debug {



" }

" HTML {



" }

" JSON {



" }

" Markdown {
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'go', 'php']
let g:vim_markdown_folding_level = 1
let g:vim_markdown_toc_autofit = 1
set conceallevel=2
let g:vim_markdown_fenced_languages = ['csharp=cs', 'php' ]

" }

" PHP {

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'php' : ['php', '/opt/langservers/php/vendor/bin/php-language-server.php'],
    \ }



" php installation
" ----------------
" composer require felixfbecker/language-server
" composer run-script --working-dir=vendor/felixfbecker/language-server parse-stubs
" php vendor/felixfbecker/language-server/bin/php-language-server.php

" vim 
" ---
" 


nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>


" }

" TypeScript {



" }

" CSS {



" }

" SCSS {



" }

" Go {
let g:go_term_mode = "vsplit"


" }

" Git {

" command! -nargs=* Gitv packadd gitv | Gitv <f-args>

" }

" Docs {



" }

" Journal {



" }

" Project Manager {



" }

" Emmet {
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_leader_key='<c-y>'
"let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.snippets_custom.json')), "\n"))
" }

" Gulp {
" }

" Terminal {
set shell=/bin/sh
" }
"if ! exists('*MyPlugin#doSomething')
"   runtime autoload/MyPlugin.vim
"endif
"if exists('*MyPlugin#doSomething')
"    call MyPlugin#doSomething(args)
"endif


" If you want to install not installed plugins on startup.
if dein#check_install()
	call dein#install()
endif
