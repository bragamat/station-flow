if &compatible
  set nocompatible
end

call plug#begin('~/.vim/bundle')

" Define bundles via Github repos
Plug 'christoomey/vim-tmux-navigator'
Plug 'lifepillar/vim-solarized8'
Plug 'gruvbox-community/gruvbox' " default colorscheme
Plug 'scrooloose/nerdtree' " file explorer
Plug 'ctrlpvim/ctrlp.vim' " fuzzy finder
Plug 'pbrisbin/vim-mkdir' " create folder if it doesn't exist
Plug 'scrooloose/syntastic' " syntax checking
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'vim-ruby/vim-ruby'
Plug 'chrisbra/color_highlight'
Plug 'tmux-plugins/vim-tmux'
Plug 'vim-airline/vim-airline' " Pretty status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'christoomey/vim-tmux-runner'
Plug 'rking/ag.vim'
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-repeat'

" JS/TS/Graphql
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'jparise/vim-graphql'
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Style-Components
Plug 'styled-components/vim-styled-components', { 'branch': 'main'  }

let g:coc_global_extensions = [ 'coc-tsserver']

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear


let g:typescript_indent_disable = 1

if filereadable(expand("~/.plugins.vim.local"))
  source ~/.plugins.vim.local
endif


function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#float#has_float() == 0 && CocHasProvider('hover') == 1)
    silent call CocActionAsync('doHover')
  endif
endfunction

function! s:show_hover_doc()
  call timer_start(500, 'ShowDocIfNoDiagnostic')
endfunction

autocmd CursorHoldI * :call <SID>show_hover_doc()
autocmd CursorHold * :call <SID>show_hover_doc()


nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <leader> do <Plug>(coc-codeaction)
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

Plug 'dracula/vim', { 'as': 'dracula'  }

Plug 'tpope/vim-commentary'

map <c-_><c-_> :Commentary<CR>

call plug#end()

