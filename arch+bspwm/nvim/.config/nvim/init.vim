" Plugins will be downloaded under the specified directory." 
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ryanoasis/vim-devicons'
Plug 'hdima/python-syntax'
"Plug 'edkolev/tmuxline.vim'

" Theme "
Plug 'kyoz/purify', { 'rtp': 'vim' }

" List ends here. Plugins become visible to Vim after this call."
call plug#end()

"Basic Conf
syntax on
set termguicolors
set number
let python_highlight_all = 1
set tabstop=4
set shiftwidth=4


" ColorScheme
colorscheme purify

" Airline Conf"
let g:airline_theme='purify'
let g:airline_powerline_fonts = 1

" Nerdcommenter
filetype plugin on
