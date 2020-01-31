call plug#begin('~/.local/share/nvim/plugged')
	Plug 'ambv/black'
	Plug 'eagletmt/neco-ghc'
	Plug 'haishanh/night-owl.vim'
	Plug 'hashivim/vim-hashicorp-tools'
	Plug 'junegunn/fzf.vim'
	Plug 'luochen1990/rainbow'
	Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
	Plug 'neoclide/coc-rls', {'do': 'yarn install --frozen-lockfile'}
	Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'roxma/nvim-yarp'
	Plug 'tell-k/vim-autopep8'
	Plug 'vhda/verilog_systemverilog.vim'
call plug#end()

for path in split(globpath("$HOME/.config/nvim/plugins", '*.vim'), "\n")
    execute 'source' fnameescape(path)
endfor
