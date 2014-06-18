" Pathogen invocation
execute pathogen#infect()

" enabling local *rc files
set exrc
set secure

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

" Highlights some formatting errors
highlight link LongLine Error
highlight link SpacesAtEnd Error
augroup vimrc_autocmds
  " autocmd BufEnter * match LongLine /\%>80v.\+/
  autocmd BufEnter * match LongLine /\%>80v.$/
  autocmd BufEnter * 2match SpacesAtEnd /\s\+$/
augroup END

" Highlight 81-st column
highlight clear ColorColumn
highlight ColorColumn term=reverse ctermbg=0* guibg=LightGray
set colorcolumn=81

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

" Command-T options.
let g:CommandTMaxFiles=1000000
let g:CommandTWildIgnore=&wildignore . "*.o,*.obj,*.d,*.png,*.svn-base,*.gif,*.jpg,*.pak,*.ninja,*.so,*.a,*.gz,*.swf,*.tmp.*,out/**,out_*/**,**/third_party/**,*.mk"
highlight CommandTHighlightColor term=reverse
  \ cterm=bold ctermbg=0* ctermfg=7*
  \ guibg=Grey
let g:CommandTHighlightColor='CommandTHighlightColor'
let g:CommandTMatchWindowReverse=1
let g:CommandTMaxHeight=20

" YCM options.
nnoremap <leader>j :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_key_list_select_completion = []
let g:ycm_key_list_previous_completion = []

" checklist.vim options.
let g:checklist_use_timestamps = 0
au BufNewFile,BufRead *.chklst setf chklst
