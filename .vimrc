" syntax on
set number

" Search for files in subdirectories
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Ignore folders from search 
" set wildignore=*/__pycache__/*


" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

