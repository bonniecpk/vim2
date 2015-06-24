" START: Pathogen load
filetype on

call pathogen#infect()
call pathogen#helptags()

if has("autocmd") 
  filetype indent plugin on 
endif 

syntax enable
" END: Pathogen load

set ic
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set number
set hlsearch
set hidden
set nocompatible  " We don't want vi compatibility.
set cursorline
set laststatus=2
set cf  " Enable error files & error jumping.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)

" Set autocomplete filepath when typing in normal mode
set wildmode=longest,list,full
set wildmenu

" Use ack instead of grep
set grepprg=ack

" tab navigation like firefox
" nnoremap <C-S-tab> :tabprevious<CR>
" nnoremap <C-tab>   :tabnext<CR>
" nnoremap <C-t>     :tabnew<CR>
" inoremap <C-S-tab> <Esc>:tabprevious<CR>i
" inoremap <C-tab>   <Esc>:tabnext<CR>i
" inoremap <C-t>     <Esc>:tabnew<CR>
map      <C-n> :NERDTreeToggle<CR>

colors torte
colorscheme desert

filetype plugin on

au BufNewFile,BufRead *.skim  set filetype=slim
au BufNewFile,BufRead *.rabl  set filetype=ruby
au BufNewFile,BufRead *.hamlc set filetype=haml
au BufNewFile,BufRead *.arb   set filetype=ruby

" " Add recently accessed projects menu (project plugin)
" set viminfo^=!
 
" Minibuffer Explorer Settings - More options http://vim.sourceforge.net/scripts/script.php?script_id=159
let g:miniBufExplMapCTabSwitchBufs = 1
 
" " alt+n or alt+p to navigate between entries in QuickFix
" map   :cp 
" map   :cn 
" 
" " Change which file opens after executing :Rails command
" let g:rails_default_file='config/database.yml'

" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes

" Backups & Files
set backup                     " Enable creation of backup file.
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.

" Setup Ruby autocomplete
if has("autocmd")
  autocmd FileType ruby set omnifunc=rubycomplete#Complete
  autocmd FileType ruby let g:rubycomplete_buffer_loading=1
  autocmd FileType ruby let g:rubycomplete_classes_in_global=1
endif

" SuperTab Options for autocompletion
" let g:SuperTabDefaultCompletionType="<C-x><C-o>"
let g:SuperTabDefaultCompletionType="context"
let g:SuperTabContextDefaultCompletionType="<C-X><C-O>"

" Configure Javascript settings
" set javascript_enable_domhtmlcss=1
let g:used_javascript_libs = 'underscore,backbone,jquery,angularjs,react,jasmine'

" Adding the following to your .vimrc, will setup SyntaxComplete for every filetype that does not already have a language specific OMNI script: 
" if has("autocmd") && exists("+omnifunc") 
" cmd Filetype * 
" \	if &omnifunc == "" | 
" \	setlocal omnifunc=syntaxcomplete#Complete | 
" \	endif 
" endif 

" Status line settings
let g:airline_theme='murmur'
let g:airline_powerline_fonts = 1
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline

" Setup vim-vroom
let g:vroom_use_colors=1
let g:vroom_use_vimux=1

" Setup AG (The Silver Search)
let g:ackprg = 'ag --nogroup --nocolor --column'
" let g:ackprg = 'ag --vimgrep'  " Which has the same effect but will report every match on the line.
