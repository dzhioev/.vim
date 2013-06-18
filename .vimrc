" Pathogen invocation
execute pathogen#infect()

" Enable syntax.
syntax on

" Search options
set ignorecase
set smartcase
set incsearch
set hlsearch

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

" clang_complete options
let g:clang_library_path = "/usr/lib"
let g:clang_hl_errors = 1
let g:clang_close_preview = 1
let g:clang_snippets = 1
let g:clang_snippets_engine = 'ultisnips'

" Command-t options.
let g:CommandTMaxFiles=1000000
set wildignore+=*.o,*.obj,*.d,*.png,*.svn-base,*.gif,*.jpg,*.pak,*.ninja,*.so,
               \*.a,*.gz,*.swf,*.tmp.*,out/**,out_*/**,**/third_party/**,*.mk
highlight CommandTHighlightColor term=reverse
  \ cterm=bold ctermbg=0* ctermfg=7*
  \ guibg=Grey
let g:CommandTHighlightColor='CommandTHighlightColor'
let g:CommandTMatchWindowReverse=1
let g:CommandTMaxHeight=20

" enabling local *rc files
set exrc
set secure

" Highlights some formatting errors
highlight link LongLine Error
highlight link SpacesAtEnd Error
augroup vimrc_autocmds
  autocmd BufEnter * match LongLine /\%>80v.\+/
  autocmd BufEnter * 2match SpacesAtEnd /\s\+$/
augroup END

" Highlight 81-st column
highlight clear ColorColumn
highlight ColorColumn term=reverse ctermbg=0* guibg=LightGray
set colorcolumn=81

" Show lines number
highlight clear LineNr
highlight LineNr term=underline cterm=bold ctermfg=0* guifg=LightGray
set number

