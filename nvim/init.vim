"
"  ▓▓▓▓▓▓▓▓▓▓
" ░▓ author ▓ Will Wright <will@wright.is>
" ░▓ tweet  ▓ @WilliamWright
" ░▓ code   ▓ https://github.com/willwright82/dotfiles
" ░▓▓▓▓▓▓▓▓▓▓
" ░░░░░░░░░░


" ╻┏┓╻╺┳╸┏━╸┏━┓┏━╸┏━┓┏━╸┏━╸
" ┃┃┗┫ ┃ ┣╸ ┣┳┛┣╸ ┣━┫┃  ┣╸
" ╹╹ ╹ ╹ ┗━╸╹┗╸╹  ╹ ╹┗━╸┗━╸


" Highlight current line
set cursorline

" show command in bottom bar
set showcmd

set autoindent

set tabstop=2 " number of visual spaces per TAB
set shiftwidth=2
set softtabstop=2 " number of spaces in tab when editing
set expandtab " tabs are spaces

if (has('termguicolors'))
	set termguicolors
endif

set number relativenumber

let theme = 'dark'

" Remove pipes in window split bar
set fillchars+=vert:\

" load Airline on Startup
let g:airline_powerline_fonts = 1
autocmd VimEnter * silent! AirlineToggleWhitespace

" Don't add the comment prefix when I hit enter or o/O on a comment line.
autocmd FileType * setlocal formatoptions-=r formatoptions-=o

" Set path to recursive Subdirectories
set path+=**

" visual autocomplete for command menu
set wildmenu
"set wildmode=longest,list:longest
set completeopt+=longest

set showmode

" Tame searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set infercase
" the /g flag on :s substitutions by default
set gdefault
" search as characters are entered
set incsearch
" highlight matching [{()}]
set showmatch
" highlight matches
set hlsearch
" get the word under the cursor, and searches for it in the current directory and all subdirectories, opening the quickfix window when done
"map <F3> :execute 'vimgrep /' . expand('<cword>') . '/j **' <Bar> cw<CR>

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

"" fold based on indent level
set foldmethod=indent
set foldlevel=99999
" space open/closes folds
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Remove Concealing
set conceallevel=0

" JavaScript (tab width 2 chr)
autocmd FileType javascript set shiftwidth=2
autocmd FileType javascript set tabstop=2
autocmd FileType javascript set softtabstop=2
autocmd FileType javascript.jsx set shiftwidth=2
autocmd FileType javascript.jsx set tabstop=2
autocmd FileType javascript.jsx set softtabstop=2

" VueJS
" set includeexpr=substitute(v:fname,'\\@','/src/','g')

" ┏━╸┏━┓┏┳┓┏┳┓┏━┓┏┓╻╺┳┓┏━┓
" ┃  ┃ ┃┃┃┃┃┃┃┣━┫┃┗┫ ┃┃┗━┓
" ┗━╸┗━┛╹ ╹╹ ╹╹ ╹╹ ╹╺┻┛┗━┛

" setup the leader key
let mapleader = ','

" remap § to <ESC>
noremap § <ESC>
imap § <ESC>

" Keep Undo history
set hidden

" maintain undo history between sessions
set undofile
set undodir=/Users/willwright/.local/share/nvim/undo
set noswapfile

" makes ,w split windows vertically
nnoremap <leader>w <C-w>v<C-w>l

" split window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" makes <F3> output character count
nnoremap <F3> :!wc -m %<CR>

" Use shell to run command on current line
noremap Q !!$SHELL<CR>

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

"nnoremap <F12> :grep! -G /FIXME|TODO/g<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

" clear search
nnoremap <leader><space> :noh<cr>

" Match bracket pairs with TAB
nnoremap <tab> %
vnoremap <tab> %

" Easier to save files
nnoremap ; :
inoremap ;w <ESC>:w

inoremap <silent> <M-3> #

" move lines up and down with ALT+J/K
"let g:move_key_modifier = 'M'
nnoremap <M-j> :m .+1<CR>==
nnoremap <M-k> :m .-2<CR>==
inoremap <M-j> <Esc>:m .+1<CR>==gi
inoremap <M-k> <Esc>:m .-2<CR>==gi
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv

" Smooth Scrolling
noremap <silent> <C-u> :call smooth_scroll#up(&scroll, 30, 2)<CR>
noremap <silent> <C-d> :call smooth_scroll#down(&scroll, 30, 2)<CR>
noremap <silent> <C-b> :call smooth_scroll#up(&scroll*2, 30, 4)<CR>
noremap <silent> <C-f> :call smooth_scroll#down(&scroll*2, 30, 4)<CR>

" Insert new line in insert mode
imap <M-o> <Esc>o

" Insert one character in normal mode
nnoremap <leader>i i_<Esc>r

" Pressing ,sc will toggle and untoggle spell checking
map <leader>sc :setlocal spell!<cr>

" Learning Mode
"nnoremap <Left> :echoe 'Use h'<CR>
"nnoremap <Right> :echoe 'Use l'<CR>
"nnoremap <Up> :echoe 'Use k'<CR>
"nnoremap <Down> :echoe 'Use j'<CR>

" Proper J & K
nnoremap k gk
nnoremap <Up> gk
nnoremap j gj
nnoremap <Down> gj
nnoremap gk k
nnoremap gj j

" OSX Clipboard
"set clipboard=unnamedplus
set clipboard=unnamed
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
" groovyness in Insert mode (lets you paste and keep on typing)
"imap <C-v> <Esc><C-v>a
" Better pasting from clipboard
map <Leader>v :set paste<CR>"*]p:set nopaste<cr>==

" Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Switch buffers by number
nnoremap <F6> :buffers<CR>:b<Space>

" toggle gundo
nnoremap <leader>gu :GundoToggle<CR>

" delete deletes in Normal mode
nnoremap <backspace> dhi

" Fold Tag
nnoremap <leader>ft Vatzf

" Quick vimrc edit in vertical split
nnoremap <leader>ev <C-w><C-v><C-l>:e ~/.files/nvim/init.vim<cr>

" Open and close Quickfix
map <Leader>fo :copen<CR>
map <Leader>fc :cclose<CR>

map <leader>zw :ZoomWin<CR>

" Toggle Tagbar
nmap <F8> :TagbarToggle<CR>

" Run Code
autocmd FileType ruby,eruby nmap <leader>e :w<CR>:!ruby %<cr>
autocmd FileType ruby,eruby nmap <leader>eb :w<CR>:call VimuxRunCommandInDir("clear; ruby " . bufname("%"),0)<CR>
autocmd FileType javascript nmap <leader>e :w<CR>:!node %<CR>
autocmd FileType javascript nmap <leader>eb :w<CR>:call VimuxRunCommandInDir("clear; node " . bufname("%"),0)<CR>

autocmd FileType python nmap <leader>e :w<CR>:!python %<CR>
autocmd FileType python nmap <leader>eb :w<CR>:call VimuxRunCommandInDir("clear; python " . bufname("%"),0)<CR>
autocmd FileType python imap <leader>eb <ESC>:w<CR>:call VimuxRunCommandInDir("clear; python " . bufname("%"),0)<CR>
autocmd FileType python imap <leader>e <ESC>:w<CR>:!python %<CR>
autocmd FileType python map <silent> <Leader>n :NERDTreeToggle<CR>

autocmd FileType ruby,eruby imap <leader>e <ESC>:w<CR>:!ruby %<CR>
autocmd FileType ruby,eruby imap <leader>eb <ESC>:w<CR>:call VimuxRunCommandInDir("clear; ruby " . bufname("%"),0)<CR>

autocmd FileType javascript imap <leader>e <ESC>:w<CR>:!node %<CR>
autocmd FileType javascript imap <leader>eb <ESC>:w<CR>:call VimuxRunCommandInDir("clear; node " . bufname("%"),0)<CR>

" Run Tests
autocmd FileType ruby,eruby,javascript,javascript.jsx nmap <leader>rt :w<CR>:TestFile<CR>
autocmd FileType ruby,eruby,javascript,javascript.jsx imap <leader>rt <ESC>:w<CR>:TestFile<CR>
autocmd FileType ruby,eruby,javascript,javascript.jsx nmap <leader>rn :w<CR>:TestNearest<CR>
autocmd FileType ruby,eruby,javascript,javascript.jsx imap <leader>rn <ESC>:w<CR>:TestNearest<CR>
autocmd FileType ruby,eruby,javascript,javascript.jsx nmap <leader>rs :w<CR>:TestSuite<CR>
autocmd FileType ruby,eruby,javascript,javascript.jsx imap <leader>rs <ESC>:w<CR>:TestSuite<CR>

" Save on losing focus
autocmd BufLeave,FocusLost * stopinsert | silent! wall

" Reload on gaining focus
autocmd FocusGained,BufEnter * :silent! !

" Save fold and load information
autocmd BufWrite * mkview
autocmd BufRead * silent! loadview

" save session and reload
let g:returnAppFlag = 0
let g:returnApp = 'iTerm'
nnoremap <leader>s :w<CR>:BraveReload<CR>
inoremap <leader>s <ESC>:w<CR>:BraveReload<CR>

" save session and preview
nnoremap <leader>p :w<CR>:exe '!open -a "Brave Browser" %'<CR><CR>
inoremap <leader>p <ESC>:w<CR>:exe '!open -a "Brave Browser" %'<CR><CR>

" Autoformat code
noremap <F2> :Autoformat<CR>

" Make CTRL-K list diagraphs before each digraph entry
inoremap <expr> <C-K> ShowDigraphs()

function! ShowDigraphs ()
  digraphs
  call getchar()
  return "\<C-K>"
endfunction

" Wrap Git commit messages at the recommended 72 columns
autocmd Filetype gitcommit setlocal spell textwidth=72

" Markdown

" For en/em dashes, respectively:
" inoremap <buffer> --<space> –<space>
" inoremap <buffer> -- —
" autocmd FileType markdown,org imap -- –
" autocmd FileType markdown,org imap --- —
" autocmd FileType markdown,org imap ... …
imap -- –
imap --- —
imap ... …
" No auto-wrap
autocmd FileType markdown setlocal spell textwidth=0
" Convert to Docx using pandoc
autocmd FileType markdown,org map <silent> <leader>c :silent w<CR> :!pandoc '%' -o '%:r.docx'<CR><CR>
" Open and save doc & docx files as markdown
autocmd BufReadPre *.docx silent set ro
autocmd BufEnter *.docx silent set modifiable
autocmd BufEnter *.docx silent %!pandoc --wrap=none -f docx -t markdown '%'
autocmd BufEnter *.docx silent set filetype=markdown
autocmd BufEnter *.docx silent set noreadonly
autocmd FileType markdown,org silent! TableModeEnable

" CSV

" Convert CSV table to Markdown table
function! CsvToMd ()
  set filetype=markdown
  silent! %s/\,/\|/e
  silent! %s/^/\|/e
  silent! %s/$/\|/e
  normal gg o |-+-|
endfunction
:command! CsvToMd :call CsvToMd()<CR>
" Convert CSV table to Org table
function! CsvToOrg ()
  set filetype=org
  silent! %s/\,/\|/e
  silent! %s/^/\|/e
  silent! %s/$/\|/e
  normal gg o |-+-|
endfunction
:command! CsvToOrg :call CsvToOrg()<CR>

" Open any file with a pre-existing swapfile in readonly mode
augroup NoSimultaneousEdits
  autocmd!
  autocmd SwapExists * let v:swapchoice = 'o'
  autocmd SwapExists * echomsg ErrorMsg
  autocmd SwapExists * echo 'Duplicate edit session (readonly)'
  autocmd SwapExists * echohl None
  autocmd SwapExists * sleep 2
augroup END

" Add numbers to a list
:command! -nargs=0 -range=% Number <line1>,<line2>s/^\s*\zs/\=(line('.') - <line1>+1).'. '

" Find duplicates in a sorted file
:command! Duplicates :g/^\(.*\)$\n\1$/p

" ┏━┓╻  ╻ ╻┏━╸╻┏┓╻   ┏━┓╺┳╸╻ ╻┏━╸┏━╸
" ┣━┛┃  ┃ ┃┃╺┓┃┃┗┫   ┗━┓ ┃ ┃ ┃┣╸ ┣╸
" ╹  ┗━╸┗━┛┗━┛╹╹ ╹   ┗━┛ ╹ ┗━┛╹  ╹

" Tweaks for Netrw file explorer
let g:netrw_banner=0 " disable annoying banner
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1 " open splits to the right
let g:netrw_liststyle=3 " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
" Now we can:
" - :edit a folder to open file browser
" - <CR>/v/t to open in h-split/v-split/tab

" mouse settings
:set mouse=a

" Disable EXEC file highlight in NERDtree
highlight link NERDTreeExecFile ModeMsg
" Open NERDTree on startup
if isdirectory(argv(0))
		bd
		autocmd vimenter * exe "cd" argv(0)
		autocmd VimEnter * NERDTree
endif
" Show hidden files
let g:NERDTreeShowHidden = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 31
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
" let g:nerdtree_tabs_open_on_console_startup = 2
" let g:nerdtree_tabs_open_on_gui_startup = 2
" let g:nerdtree_tabs_autofind = 1
" map <silent> <Leader>n :NERDTreeToggle<CR>
nnoremap <silent> <expr> <Leader>n g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

" IndentLine plugin Character
"let g:indentLine_char = '⦙'
"let g:indentLine_char = '┊'
let g:indentLine_char = '⎸'
"let g:indentLine_char = '·'
let g:indentLine_concealcursor=0
let g:indentLine_setConceal = 0

" scrooloose/nerdcommenter
let g:NERDCustomDelimiters={
  \ 'javascript.jsx': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
  \ 'vue': { 'left': '<!-- ', 'right': ' -->', 'leftAlt': '//', 'rightAlt': '' },
\}

" Enable all Python syntax highlighting features
let python_highlight_all = 1

" git-gutter http://git.io/vimgitgutter
let g:gitgutter_enable = 1
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1
let g:gitgutter_max_signs = 1500

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = { 'regex': 'Line is too long' }

" Use Eslint for React
let g:syntastic_javascript_checkers = ['eslint']

" Use Eslint for Vue
let g:syntastic_vue_checkers = ['eslint']

" Use Rubocop for Ruby
let g:syntastic_ruby_checkers = ['rubocop', 'mri']

let g:syntastic_mode_map = {
      \ "mode": "active",
      \ "active_filetypes": ["ruby", "eruby", "javascript", "javascript.jsx", "vue", "coffeescript", "css", "scss", "sass"],
      \ "passive_filetypes": ["markdown"] }

" buffergator tweaks
" split below VIM window
let g:buffergator_viewport_split_policy = "b"
" 15 lines height for window
let g:buffergator_split_size = 15
let g:buffergator_sort_regime = "mru"

" Exit mode in Multiple-cursors
let g:multi_cursor_exit_from_visual_mode = 0
let g:multi_cursor_exit_from_insert_mode = 0

" Snipmate
" Use CTRL+J for snippet completion
" imap <C-J> <Plug>snipMateNextOrTrigger
" smap <C-J> <Plug>snipMateNextOrTrigger
"let g:snipMate.scope_aliases['ruby'] = 'ruby,ruby-rails'
"let g:snipMate.scope_aliases['javascript'] = 'javascript,javascript.es6.react,javascript.meteor'
"let g:snipMate.scope_aliases['html'] = 'html,html.meteor'

" Shougo/neosnippet
" Plugin key-mappings
imap <C-j>     <Plug>(neosnippet_expand_or_jump)
smap <C-j>     <Plug>(neosnippet_expand_or_jump)
xmap <C-j>     <Plug>(neosnippet_expand_target)
" inoremap <silent><expr><CR>\
"       \ pumvisible() ? deoplete#mappings#close_popup()\
"       \ '\<Plug>(neosnippet_expand_or_jump)' :\
"       \ '\<CR>'

" SuperTab like snippets behavior.
" Note: It must be 'imap' and 'smap'.  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? '\<C-n>' :
" \ neosnippet#expandable_or_jumpable() ?
" \    '\<Plug>(neosnippet_expand_or_jump)' : '\<TAB>'
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ '\<Plug>(neosnippet_expand_or_jump)' : '\<TAB>'

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
" let g:neosnippet#snippets_directory='~/.config/nvim/snippets'
let g:neosnippet#snippets_directory='~/.config/nvim/vim-snippets/snippets'

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Vim-test -- make test commands execute using vim
" let test#strategy = 'dispatch'
let test#strategy = 'neovim'
let g:test#runner_commands = ['RSpec', 'Jest', 'Mocha']
let test#javascript#jest#options = '--updateSnapshot --silent --runInBand --reporters jest-nyan-reporter'
" let test#javascript#jest#executable = 'yarn test --updateSnapshot --silent --runInBand --reporters jest-nyan-reporter'
let test#javascript#jest#file_pattern = '\.js'
"let test#javascript#jest#file_pattern = 'spec.js'

" groenewege/vim-less
autocmd BufNewFile,BufRead *.less set filetype=less
autocmd FileType css,sass,scss,less set omnifunc=csscomplete#CompleteCSS

" mtth/scratch.vim
let g:scratch_autohide = &hidden
let g:scratch_top = 0
let g:scratch_no_mappings = 1
nmap <leader>ss <plug>(scratch-insert-reuse)
nmap <leader>sS <plug>(scratch-insert-clear)
xmap <leader>ss <plug>(scratch-selection-reuse)
xmap <leader>sS <plug>(scratch-selection-clear)

" kien/ctrlp.vim
let g:ctrlp_map = '<c-p>'
" Show hidden dotfiles and dotdirs
let g:ctrlp_show_hidden = 1
" Close NERDTree before opening CtrlP
let g:ctrlp_cmd = 'NERDTreeClose<CR>:CtrlP'
" Use The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" EasyAlign
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_python = 'python3'
"let g:pymode_rope = 1
" Support virtualenv
let g:pymode_virtualenv = 1
" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>pb'
" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_options_max_line_length = 80
let g:pymode_options_colorcolumn = 0
" Don't autofold code
let g:pymode_folding = 0
"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
 "Auto check on save
let g:pymode_lint_write = 1
let g:jedi#auto_initialization = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#rename_command = '<Leader>jr'
let g:jedi#usages_command = '<Leader>jn'

" Vim-markdown
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_follow_anchor = 1
let g:vim_markdown_conceal = 0

" Neoformat sbdchd/neoformat
nmap <Leader>af <Plug>(Neoformat)
" autocmd BufWritePre *.js Neoformat prettier

"" Vim-prettier
"nmap <Leader>py <Plug>(Prettier)
"let g:prettier#autoformat = 0
"" max line length that prettier will wrap on
"let g:prettier#config#print_width = 80
"" number of spaces per indentation level
"let g:prettier#config#tab_width = 2
"" use tabs over spaces
"let g:prettier#config#use_tabs = 'false'
"" print semicolons
"let g:prettier#config#semi = 'false'
"" single quotes over double quotes
"let g:prettier#config#single_quote = 'true'
"" print spaces between brackets
"let g:prettier#config#bracket_spacing = 'true'
"" put > on the last line instead of new line
"let g:prettier#config#jsx_bracket_same_line = 'true'
"" none|es5|all
"let g:prettier#config#trailing_comma = 'none'
"" flow|babylon|typescript|postcss
"let g:prettier#config#parser = 'flow'
"" Running before saving async
""autocmd BufWritePre *.js,*.jsx,*.css,*.scss,*.less PrettierAsync
"
"" Autoformat Javascript and JSX using prettier
""autocmd FileType javascript.jsx,javascript setlocal formatprg=prettier\ --single-quote\ --trailing-comma\ es5\ --stdin
"" Run prettier on file save
""autocmd BufWritePre *.js :normal gggqG
""autocmd BufWritePre *.js exe 'normal! gggqG\<C-o>\<C-o>'

" Goyo
let g:goyo_width=100
function! s:goyo_enter()
  "if exists('$TMUX')
    "silent !tmux set status off
  "endif
  NERDTreeClose
  set noshowmode
  set noshowcmd
  set scrolloff=999
  set wrap
  setlocal textwidth=0
  setlocal wrapmargin=0
endfunction
function! s:goyo_leave()
  "if exists('$TMUX')
    "silent !tmux set status on
  "endif
  highlight NonText guibg=#263238 ctermbg=NONE
  highlight Normal guibg=#263238 ctermbg=NONE
  highlight VertSplit ctermfg=NONE ctermbg=NONE cterm=NONE gui=NONE guibg=#263238 guifg=#263238
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Shougo/Deoplete.nvim
let g:deoplete#enable_at_startup = 1
" Disable deoplete when using vim-multiple-cursors
function g:Multiple_cursors_before()
  call deoplete#custom#buffer_option('auto_complete', v:false)
endfunction
function g:Multiple_cursors_after()
  call deoplete#custom#buffer_option('auto_complete', v:true)
endfunction
" Disable deoplete for org, markdown and LaTex
autocmd FileType org,markdown,tex call deoplete#custom#buffer_option('auto_complete', v:false)

" w0rp/ALE
" " Use ALE and also some plugin 'foobar' as completion sources for all code.
" let g:deoplete#sources = {'_': ['ale', 'foobar']}
let g:ale_completion_enabled = 0
" Only lint on save
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_save = 1
" Don't lint on opening a file
let g:ale_lint_on_enter = 0
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
" let g:ale_linter_aliases = {'vue': ['vue', 'javascript']}
" let g:ale_linters = {'vue': ['eslint', 'vls']}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint', 'prettier'],
\   'scss': ['stylelint'],
\   'vue': ['prettier'],
\}

" Fix files automatically on save
let g:ale_fix_on_save = 1

"iberianpig/tig-explorer.vim
" open tig with current file
nnoremap <Leader>to :TigOpenCurrentFile<CR>
" open tig with Project root path
nnoremap <Leader>TO :TigOpenProjectRootDir<CR>
" open tig grep
nnoremap <Leader>tg :TigGrep<CR>
" resume from last grep
nnoremap <Leader>tr :TigGrepResume<CR>
" open tig grep with the selected word
vnoremap <Leader>tg y:TigGrep<Space><C-R>"<CR>
" open tig grep with the word under the cursor
nnoremap <Leader>tc :<C-u>:TigGrep<Space><C-R><C-W><CR>
" open tig blame with current file
nnoremap <Leader>tb :TigBlame<CR>

" Vim-OrgMode
let g:org_indent = 0
let g:org_export_emacs = "/usr/bin/emacs"
let g:org_export_init_script = "~/.emacs.d"
" No text wrap
autocmd FileType org setlocal textwidth=0
let g:org_tag_column = 0
" Enable Spell Checker
autocmd FileType org setlocal spell

" allows cursor change in tmux mode
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" don't blink the cursor
"set guicursor+=i:blinkwait0

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/willwright/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/willwright/.local/share/dein')
  call dein#begin('/Users/willwright/.local/share/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/willwright/.local/share/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  "call dein#add('Valloric/YouCompleteMe')
  "call dein#add('bonsaiben/bootstrap-snippets.git')
  "call dein#add('davidhalter/jedi-vim.git')
  "call dein#add('garbas/vim-snipmate')
  "call dein#add('junegunn/vim-peekaboo.git')
  "call dein#add('mtth/scratch.vim')
  "call dein#add('rizzatti/dash.vim.git')
  "call dein#add('severin-lemaignan/vim-minimap.git')
  "call dein#add('slim-template/vim-slim.git')
  "call dein#add('tpope/vim-haml.git')
  "call dein#add('vim-scripts/ReplaceWithRegister.git')
  "call dein#add('vim-scripts/YankRing.vim.git')
  "call dein#add('zchee/deoplete-jedi')
	" call dein#add('tpope/vim-afterimage')

  " call dein#add('neoclide/coc.nvim')
	call dein#add('ap/vim-css-color')
  call dein#add('Chiel92/vim-autoformat.git')
  call dein#add('Lokaltog/vim-easymotion')
  call dein#add('MarcWeber/vim-addon-mw-utils.git')
  call dein#add('NLKNguyen/papercolor-theme.git')
  call dein#add('Raimondi/delimitMate.git')
  call dein#add('Valloric/MatchTagAlways.git')
  call dein#add('Yggdroot/indentLine.git')
  call dein#add('airblade/vim-gitgutter')
  " call dein#add('ajh17/VimCompletesMe.git')
  call dein#add('benmills/vimux.git')
  call dein#add('bronson/vim-trailing-whitespace')
  call dein#add('christoomey/vim-sort-motion.git')
  call dein#add('christoomey/vim-system-copy.git')
  call dein#add('christoomey/vim-titlecase.git')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('ddollar/nerdcommenter')
  call dein#add('dhruvasagar/vim-table-mode.git')
  call dein#add('edkolev/tmuxline.vim.git')
  " call dein#add('elzr/vim-json')
  call dein#add('ervandew/supertab')
  call dein#add('groenewege/vim-less.git')
  call dein#add('iberianpig/tig-explorer.vim.git')
  call dein#add('janko-m/vim-test.git')
	call dein#add('jceb/vim-orgmode')
  " call dein#add('jdkanani/vim-material-theme.git')
  call dein#add('jeetsukumaran/vim-buffergator')
  " call dein#add('jistr/vim-nerdtree-tabs.git')
  call dein#add('jparise/vim-graphql')
  call dein#add('junegunn/goyo.vim.git')
  call dein#add('junegunn/vim-easy-align.git')
	call dein#add('kaicataldo/material.vim')
  call dein#add('kana/vim-textobj-entire.git')
  call dein#add('kana/vim-textobj-indent.git')
  call dein#add('kana/vim-textobj-line.git')
  call dein#add('kana/vim-textobj-user.git')
  call dein#add('klen/python-mode.git')
  " call dein#add('kristijanhusak/vim-hybrid-material.git')
  call dein#add('majutsushi/tagbar')
  call dein#add('mattn/emmet-vim.git')
  call dein#add('mattn/gist-vim.git')
  call dein#add('matze/vim-move.git')
  call dein#add('mhinz/vim-startify.git')
  call dein#add('mileszs/ack.vim')
  " call dein#add('mxw/vim-jsx.git')
  " call dein#add('pangloss/vim-javascript.git')
  call dein#add('sheerun/vim-polyglot')
  " call dein#add('plasticboy/vim-markdown.git')
	" call dein#add('posva/vim-vue.git')
  call dein#add('qpkorr/vim-bufkill.git')
  call dein#add('sbdchd/neoformat')
  call dein#add('scrooloose/nerdtree')
  call dein#add('scrooloose/syntastic')
	call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
  call dein#add('sjl/vitality.vim.git')
  call dein#add('skalnik/vim-vroom')
  call dein#add('ternjs/tern_for_vim.git')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('terryma/vim-smooth-scroll.git')
  call dein#add('tomtom/tlib_vim.git')
  call dein#add('tpope/vim-commentary.git')
  call dein#add('tpope/vim-dispatch.git')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-ragtag.git')
  call dein#add('tpope/vim-rails.git')
  call dein#add('tpope/vim-repeat.git')
  call dein#add('tpope/vim-speeddating.git')
  call dein#add('tpope/vim-surround.git')
  call dein#add('tpope/vim-unimpaired')
  call dein#add('tyrannicaltoucan/vim-quantum')
  call dein#add('vim-airline/vim-airline-themes.git')
  call dein#add('vim-airline/vim-airline.git')
  " call dein#add('vim-ruby/vim-ruby.git')
  call dein#add('vim-scripts/ZoomWin')
  call dein#add('vim-scripts/closetag.vim.git')
  " call dein#add('wavded/vim-stylus.git')
  call dein#add('w0rp/ale')
	call dein#add('willwright82/browsereload-mac.vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
" if dein#check_install()
"  call dein#install()
" endif

"End dein Scripts-------------------------

if theme == 'dark'
  set background=dark
  let g:airline_theme='papercolor'
  autocmd VimEnter * AirlineTheme papercolor
  " colorscheme quantum
	" let g:quantum_italics=1
	let g:material_terminal_italics = 1
	let g:material_theme_style = 'default'
  colorscheme material
	highlight CursorLine guibg=#252525
	highlight Visual guibg=#65738e
	set nocursorcolumn
  " No Tildes
	highlight NonText ctermfg=NONE guifg=#263238 cterm=NONE gui=NONE
  " No Background
	" highlight NonText guibg=#263238 ctermbg=NONE
	" highlight Normal guibg=#263238 ctermbg=NONE
	" No Split bars
	highlight VertSplit ctermfg=NONE ctermbg=NONE cterm=NONE gui=NONE guibg=#263238 guifg=#263238
  let g:indentLine_color_term = 238
elseif theme == 'light'
  set background=light
  " colorscheme PaperColor
	let g:material_terminal_italics = 1
	let g:material_theme_style = 'lighter'
  colorscheme material
  let g:airline_theme='papercolor'
  autocmd VimEnter * AirlineTheme papercolor
  "" Change Line Number Colour
  highlight LineNr ctermfg=251 ctermbg=NONE
  let g:indentLine_color_term = 251
endif

" https://alexpearce.me/2014/05/italics-in-iterm2-vim-tmux/
" has to go after all theme declarations
highlight Comment cterm=italic
autocmd FileType javascript.jsx highlight xmlAttrib cterm=italic

au WinLeave * set nocursorline
au WinEnter * set cursorline

" ┏━┓╺┳╸┏━┓╺┳╸╻ ╻┏━┓╻  ╻┏┓╻┏━╸
" ┗━┓ ┃ ┣━┫ ┃ ┃ ┃┗━┓┃  ┃┃┗┫┣╸
" ┗━┛ ╹ ╹ ╹ ╹ ┗━┛┗━┛┗━╸╹╹ ╹┗━╸

let g:tmuxline_preset = {
      \'a'    : "#h [#(df -g / | awk 'FNR==2' | awk '{print $5}')]",
      \'b'    : '#S',
      \'c'    : '#W',
      \'win'  : '#I #W',
      \'cwin' : '#I #W',
      \'x'    : '#(~/bin/tmux-charge)',
      \'y'    : '%a %d/%h %H:%M #(~/bin/temperature)',
      \'z'    : '#(dig +short myip.opendns.com @resolver1.opendns.com)'}

" From .Janus
"VimCompletesMe
"bootstrap-snippets
"calendar-vim
"closetag-vim
"dash-vim
"delimitMate
"emmet-vim
"gist-vim
"goyo-vim
"hybrid-material
"indentLine
"jedi-vim
"mysnippets
"papercolor-theme
"python-mode
"scratch
"tagbar
"taglist-vim
"tender-vim
"tern_for_vim
"tig-explorer-vim
"tmuxline.vim
"tyrannicaltoucan-vim-quantum
"vim-SyntaxRange
"vim-airline
"vim-airline-themes
"vim-autoformat
"vim-browsereload-mac
"vim-bufkill
"vim-commentary
"vim-dispatch
"vim-easy-align
"vim-haml
"vim-javascript
"vim-jsx
"vim-less
"vim-markdown
"vim-material-theme
"vim-move
"vim-nerdtree-tabs
"vim-orgmode
"vim-peekaboo
"vim-prettier
"vim-ragtag
"vim-rails
"vim-repeat
"vim-ruby
"vim-slim
"vim-smooth-scroll
"vim-sort-motion
"vim-speeddating
"vim-startify
"vim-surround
"vim-system-copy
"vim-table-mode
"vim-test
"vim-textobj-entire
"vim-textobj-indent
"vim-textobj-line
"vim-textobj-user
"vim-titlecase
"vimux
"vitality.vim
