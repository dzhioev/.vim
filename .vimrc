" Pathogen invocation
execute pathogen#infect()

" Enable syntax.
syntax on

" Search options
set ignorecase
set smartcase
set incsearch
set hlsearch

" Enables backspace
set bs=2

" Enables persistent undo
set undofile
set undodir=~/.vim/vimundo

" Enables status line for one window
set laststatus=2

" Disables "No write since last change" message while changing buffer
set hidden

" Commands to make autoindent work
filetype on
filetype plugin on
filetype indent on
set expandtab
set shiftwidth=2
set softtabstop=2
set cinoptions=N-s,g0,+2s,l-s,i2s

" Highlights some formatting errors
highlight clear LongLine
highlight link LongLine Error
highlight clear SpaceAtEnd
highlight link SpacesAtEnd Error
augroup vimrc_autocmds
  autocmd BufEnter * match LongLine /\%>100v.$/
  autocmd BufEnter * 2match SpacesAtEnd /\s\+$/
augroup END

" Highlight 81-st column
highlight clear ColorColumn
highlight ColorColumn term=reverse ctermbg=0* guibg=LightGray
set colorcolumn=101

" Highlight current line
highlight clear CursorLine
highlight CursorLine term=underline ctermbg=0* guibg=LightGray
set cursorline

" Show lines number
highlight clear LineNr
highlight LineNr term=underline cterm=bold ctermfg=0* guifg=LightGray
set number

" Remapping <leader> key from '\'
" let mapleader = "\<Space>"
map <Space> <leader>

set showcmd
set ruler
set title

" Stripped line text-object.
vnoremap il :<c-u>normal! ^vg_<cr>
onoremap il :normal vil<cr>

" Command-T options.
let g:CommandTMaxFiles=1000000
let g:CommandTTraverseSCM='dir'
let g:CommandTWildIgnore=&wildignore . "*.o,*.obj,*.d,*.png,*.svn-base,*.gif,*.jpg,*.pak,*.ninja,*.so,*.a,*.gz,*.swf,*.tmp.*,*.mk,*/build*/*"
highlight CommandTHighlightColor term=reverse
  \ cterm=bold ctermbg=0* ctermfg=7*
  \ guibg=Grey
let g:CommandTHighlightColor='CommandTHighlightColor'
let g:CommandTMatchWindowReverse=1
let g:CommandTMaxHeight=20

" checklist.vim options.
let g:checklist_use_timestamps = 0
au BufNewFile,BufRead *.chklst setf chklst

set makeprg='$HOME/.vim/cmake_makeprg.sh'

let g:raibow_conf = {
\  'separately': {
\    'cmake': 0,
\  }
\}
let g:rainbow_active = 1
let g:sh_no_error = 1
