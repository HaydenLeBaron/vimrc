" NVIM CONFIG
" NOTE: remember to run source % and :PlugInstall to install plugins!
" To uninstall a plugin, uncomment/delete the line in this file and run :PlugClean

"======================================
"= Set up Plugged plugin manager and Plugins
"======================================

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/fzf' " Fuzzy file search. Trigger with :Files 
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-speeddating'  " Dependency of vim-org-mode
Plug 'jceb/vim-orgmode'
"Plug 'easymotion/vim-easymotion'  " Has some conficts with my leader keybindings
Plug 'itchyny/lightline.vim'  " Allows for status bar theming
Plug 'itchyny/landscape.vim'  " High contrast status bar theme
Plug 'justinmk/vim-sneak'  " Allows for vimium style jumping. Activate with 's'. Cycle forward with ';'
Plug 'terryma/vim-multiple-cursors' " Triggered with <C-n>. Run :help multiple-cursors-usage for help
Plug 'tpope/vim-eunuch' " Puts more unix commands in vim command-line
Plug 'scrooloose/nerdtree'  " Sidebar file manager
Plug 'vimwiki/vimwiki'
Plug 'tbabej/taskwiki' " Integrates vimwiki and Taskwarrior
Plug 'powerman/vim-plugin-AnsiEsc'  " Adds vimwiki color support in charts (good for Taskwarrior)
Plug 'majutsushi/tagbar' " Provides taskwiki file navigation for taskwarrior
Plug 'blindFS/vim-taskwarrior'  " Enables task warrior grid view
"Plug 'ajh17/VimCompletesMe' " Lightweight tab completion
Plug 'plasticboy/vim-markdown'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }


" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"======================================
"= Other
"======================================

" Configure command mode autocomplete
set wildmenu
set wildmode=list

" Enable hybrid line numbers
set number
set relativenumber

" Disable autocomment on next line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Setup 4 space indent
filetype plugin indent on
set tabstop=4  " show existing tab with 4 spaces width
set shiftwidth=4  " when indenting with '>', use 4 spaces width
set expandtab  " On pressing tab, insert 4 spaces

" Configure vimwiki to use markdown files
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}, {'path': '~/exocortex/facio/vimwiki-cartographer/testwiki/', 'syntax': 'markdown', 'ext': '.md'}]

"let g:markdown_folding = 'syntax'  " Enable folding by default on vimwiki markdown
"let g:vimwiki_folding = 'syntax'  " Enable folding by default on vimwiki markdown



"======================================
"= Custom key-bindings
"======================================

let mapleader=" " " Set leader

"File search
nmap <leader>ff :NERDTreeToggle<Enter>

"Fuzzy file search
nmap <leader>fz :Files<Enter> 

"Open buffer menu
nmap <leader>bb :buffers<Enter>

"======================================
"= Window management
"======================================

"Other window commands accessible with <leader>w
nmap <leader>w <C-w>

"vertical split window to the right
nmap <leader>w/ <C-w>v 

"horizontal split window
nmap <leader>w- <C-w>s

nmap <leader>v <Plug>VimwikiIndex


"======================================
"= Aesthetic
"======================================




colorscheme landscape









let lightline = {'colorscheme': 'landscape',}
