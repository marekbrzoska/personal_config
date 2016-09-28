set nocompatible
set confirm

" Wartość 'encoding' w czasie zapisu tego pliku
set encoding=utf-8
set fenc=utf-8

syntax on
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins 

execute pathogen#infect()

set noerrorbells visualbell t_vb=
set cursorline
set noautochdir

" I like to move over wrapped lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" some emacs editng
inoremap <m-bs> <esc>dbs

" moving in insert mode
inoremap <c-l> <Right>
inoremap <c-h> <Left>

" moving in ex mode
cmap <c-f> <Right>
cmap <c-b> <Left>
cmap <m-f> <c-Left>
cmap <m-b> <c-Right>
cmap <c-a> <home>
cmap <c-e> <end>
cmap <c-d> <del>

" moving around windows
nnoremap <m-h> <c-w>h
nnoremap <m-j> <c-w>j
nnoremap <m-k> <c-w>k
nnoremap <m-l> <c-w>l

" moving through clist
nmap <m-c> :cn<cr>
nmap <m-C> :cp<cr>
nmap <c-m-c> :cfirst 

"scrolling horizontally
nnoremap zl 80zl
nnoremap zh 80zh


" copying and pasting from system clipboard
"paste in insert mode:
inoremap <c-v> <c-o>:set paste<cr><c-r>+<c-o>:set nopaste<cr>
"middle-button paste in insert mode:
inoremap <middlemouse> <c-o>:set paste<cr><c-r>*<c-o>:set nopaste<cr>
"copy in visual mode:
vnoremap <c-c> "+y

" backslash as mapleader is troublesome
let mapleader = ","

set wildignore=*.o,*~,*.pyc

" open CtrlP
nnoremap <leader>o :CtrlP<cr>
nnoremap <leader>t :CtrlPTag<cr>
" let g:ctrlp_map = '<c-c><c-o>'
let g:ctrlp_cmd = 'CtrlP'


" edit another file in current window
nnoremap <m-e> :e .<cr> 

" open current buffer in new tab
nnoremap <c-w><c-o> :tabedit %<cr>

" easy splitting windows with opening new file
nnoremap <c-m-H> :new<cr><c-w>J
nnoremap <c-m-V> :vnew<cr><c-w>L

" save file when jumping to another file
set autowriteall

" don't close buffer when going to another - just hide it. It preserved e.g. undo
set hidden

" I don't like vim break words while wrapping
set nowrap nolinebreak number textwidth=0

" Nice command line completion
set wildmenu
set wildmode=list:longest

" Always show position of the cursor in the bottom right corner
set ruler

" I like 4 spaces for indenting
set shiftwidth=4

" I like 4 stops
set tabstop=4

" Spaces instead of tabs
set expandtab

" 4 spaces treated a tab
set softtabstop=4

" Always  set auto indenting on
set autoindent

" Paste mode = <F2>
set pastetoggle=<F2>

" I like to distinguish between THINGS, Things and things
set noignorecase

" I like to search as I type
set incsearch

" highlight all search matches
set hlsearch

" keep 50 lines of command line history
set history=10000

" remember for undo
set undolevels=2000

" Make tab in v mode work like I think it should (keep highlighting):
vmap <tab> >gv
vmap <s-tab> <gv
nmap <Tab> a<C-t><Esc>
nmap <S-Tab> a<C-d><Esc>

" easy paste with correct indentations
nnoremap <m-p> ]p
nnoremap <m-s-p> ]P

" Y act like C or D, instead of behavior of yy
map Y y$


" Quicksave
nnoremap ,. :w<cr>

" I can close the file by hitting qq
nnoremap QQ :q<cr>

" Spellcheck in english
nmap zen :set spell spelllang=en<cr>

" Spellcheck in polish
nmap zpl :set spell spelllang=pl<cr>

" No spellcheck
nmap zn :set nospell<cr>

" Substitute current word
nmap <s-F3> :%s/\<<C-r><C-w>\>/<C-r><C-w>/g<Left><Left>

" Search for highlighted text
vmap <F3> y:execute "/".escape(@",'[]/\.*')<cr>

" Substitute highlighted text
vmap <s-F3> y:execute "%s/".escape(@",'[]/\')."//g"<Left><Left><Left>

"F7 F7 Turn on normal text edition mode
map <F7><F7> :set wrap linebreak textwidth=0 nonumber<cr>
map <F7> :set wrap! number! <cr>

" Toggling hlsearch
nnoremap <c-l> :nohl<cr>

" Setting font in gui mode
set guioptions-=m "menu

" move left/right in insert mode in emacs manner
imap <m-l> <esc>la
imap <m-h> <esc>i
imap <m-f> <esc>ea
imap <m-b> <esc>bi

" add a line below current in normal mode
nmap oo o<esc>

" add a line above current in normal mode
nmap OO O<esc>

" break line in normal mode
nmap <cr> i<cr><esc>

" To avoid long wait for abbreviation:
set timeoutlen=500

" I like big window
if has("gui_running")
   set lines=59 columns=237 
   set guifont="Inconsolata Medium 12"
   colorscheme desertEx  " default one is better if in console
endif

" deleting parenthesis - first go to opening parent
nmap %% mp%x`px

"" nnoremap <silent> <Space> @=(foldlevel('.')?'zA':'l')<cr>
"" vnoremap <Space> zf


" for sesssions to work just fine:
set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winsize,winpos

" for cleaner swp:
set dir=~/.vim_backup//
"" not sure if this one really changes something
"set backupdir=~/.vim_backup//

" for filename completion after =
set isfname-==

" filename no ext
nmap <leader>fn   a<C-R>=expand("%:t:r")<cr><esc>

" Reload vimrc:
nnoremap <F5> :source ~/.vimrc<cr>

" Edit vimrc:
nnoremap <F4> :e ~/.vimrc<cr>

function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
        set number
        highlight LineNr guifg=burlywood3
    else
        set relativenumber
        highlight LineNr guifg=yellow
    endif
endfunc

nnoremap <M-r> :call NumberToggle()<cr>

silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" nmap <m-*> :call setqflist([]) | bufdo vimgrepadd //j %
" 
" function! BufStar()
"     let g:starword=expand("<cword>")
"     call setqflist([])
"     bufdo vimgrepadd! /g:starword/g expand('%:p')
"     " bufdo echo expand('%:p')
" endfunc

if substitute(system('hostname'), '\n', '', '') == 'mbrzoska'
    source /home/mbrzoska/.vim/work.vim
endif

" au BufNew,BufRead *.py :source ~/.vim/python.vim


let g:ctrlp_extensions = ['tag']

" Search across open buffers!!!
nnoremap <leader>s :call setqflist([]) \| bufdo vimgrepadd! // %<left><left><left>


" Following two functions bounded to BufWrite backup session on every save
function! PrepareForBackup()
    let g:make_session_done=0
endfunction

function! BackupSession()
    if v:servername == 'MBR' && g:make_session_done == 0
        mksession! ~/vim.mbr.session
        let g:make_session_done=1
    endif
endfunction

autocmd BufWritePre * call PrepareForBackup()
autocmd BufWritePost * call BackupSession()
