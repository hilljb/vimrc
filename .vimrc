" Colors and colorscheme stuff -------------------------------------------------
set t_Co=256

" Create a hook to override certain colors whenever a colorscheme is set
" The numbers are terminal specific. Use the get_term_colors.sh script. YMMV.
autocmd ColorScheme * highlight Normal ctermbg=None
autocmd ColorScheme * highlight NonText ctermbg=None
autocmd ColorScheme * highlight CursorLine ctermbg=8
autocmd ColorScheme * highlight LineNr ctermfg=232 ctermbg=None
autocmd ColorScheme * highlight ColorColumn ctermbg=233

colorscheme jellybeans

set cursorline


" Fonts and spaces and stuff ---------------------------------------------------
set guifont=Liberation\ Mono\ 7
set tabstop=4
set shiftwidth=4
set expandtab


" Various vim options ----------------------------------------------------------
set nu
syntax on
set linebreak
set colorcolumn=80,120
set bs=2
set ruler
set rulerformat=%l\:%c\ \ %P


" Custom stuff -----------------------------------------------------------------

" Automatically remove extra whitespace from certain filetypes
autocmd BufWritePre * %s/\s\+$//e

" ESC, F1 will write
nmap <F1> :w<CR>

" ESC, F2 will run black with a line length set to 120
nmap <F2> :!black -l 120 %<CR>

" ESC, F3 will run PDFLaTeX
nmap <F3> :!pdflatex --shell-escape %<CR>
