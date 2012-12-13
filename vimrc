set number
call pathogen#infect()
syntax on
filetype plugin indent on
set ruler

set fileformats=unix,mac,dos  
"" Whitespace
set tabstop=2 shiftwidth=2 " a tab is two spaces (or set this to 4)
set expandtab      " use spaces, not tabs


" CtrlP
"
"let g:ctrlp_map = '<c-p>' " Mapping
"let g:ctrlp_cmd = 'CtrlP' " Command
" Working directory. Available options:
" 0 - Don't manage working dir.
" 1 - Parent directory of current file
" 2 - nearest ancestor that contains one of these dirs or files: .git/, .hg/, .svn/ .bzr/ _darcs/ or "marker_dir/" or "marker_file"
let g:ctrlp_working_path_mode = 2

"" Mappings
imap jk <ESC>
imap Jk <ESC>
imap JK <ESC>

" Saves time
nmap <space> :

"" statusline setup
set statusline=%f " tail of the filename
" Git
set laststatus=2
set statusline+=%{GitBranchInfoString()}

let g:git_branch_status_head_current=1   " Shows current head branch name
let g:git_branch_status_text=" "         " Shows 'text' before the branches.
let g:git_branch_status_nogit=""         " Shows 'text' when no repo is present
let g:git_branch_status_around="()"      " Shows () aroung branch strings
let g:git_branch_status_ignore_remotes=1 " Ignore remote branches


" Twekeeng the statusline
set statusline+=%m      "modified flag

set statusline+=\ %=                        " align left
set statusline+=Line:%l/%L[%p%%]            " line X of Y [percent of file]
set statusline+=\ Col:%c                    " current column
set statusline+=\ Buf:%n                    " Buffer number

" Ctags
set tags+=gems.tags

" Folding method
"set foldmethod=syntax
"set foldnestmax=3
"set foldlevelstart=1
"" Don't screw up folds when inserting text that might affect them, until
"" leaving insert mode. Foldmethod is local to the window. Protect against
"" screwing up folding when switching between windows.
"autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
"autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif
"
" map CTRL-E to end-of-line (insert mode)
imap <C-e> <esc>$i<right>
" map CTRL-A to beginning-of-line (insert mode)
imap <C-a> <esc>^i
