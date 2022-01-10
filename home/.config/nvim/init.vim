" Plugins
set rtp +=~/.config/nvim

call plug#begin('~/.config/nvim/autoload/')

"Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

call plug#end()

":colorscheme xcodedarkhc
":set background=dark

" Telescope config
lua << EOF
require('telescope').setup{
  defaults = {
	  prompt_prefix = "$ "
	  }
}

require('telescope').load_extension('fzf')
EOF
