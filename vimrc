set number
call pathogen#infect()
syntax on
filetype plugin indent on
set ruler
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
