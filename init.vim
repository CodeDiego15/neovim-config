" Inicia la configuración del plugin
call plug#begin('~/.config/nvim/plugged')

" Tema Catppuccin
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" Iconos para archivos
Plug 'kyazdani42/nvim-web-devicons'

" Barra de estado
Plug 'nvim-lualine/lualine.nvim'

" Explorador de archivos
Plug 'kyazdani42/nvim-tree.lua'

call plug#end()

" Configuración del tema Catppuccin
lua << EOF
require('catppuccin').setup({
    flavour = "mocha", -- O puedes usar "macchiato", "frappe", o "latte"
    transparent_background = true, -- Habilita fondo transparente
})
vim.cmd [[colorscheme catppuccin]]
EOF

" Configuración de la barra de estado
lua << EOF
require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'catppuccin',
        component_separators = '|',
        section_separators = '',
    },
}
EOF

" Configuración del explorador de archivos Nvim Tree
lua << EOF
require'nvim-tree'.setup {
    auto_close = true, -- Cierra el árbol de archivos cuando se pierde el foco
    filters = {
        dotfiles = true, -- Muestra archivos ocultos
    },
    view = {
        side = 'left',
        width = 30,
    },
}
EOF

" Habilitar la barra de estado y el explorador de archivos
set laststatus=2           " Siempre mostrar la barra de estado
set noshowmode             " Ocultar el modo de estado en la barra
set noruler                " Ocultar la regla de línea y columna

" Mapa para abrir el explorador de archivos
nmap <C-n> :NvimTreeToggle<CR>

" Mapa para buscar archivos con Telescope (opcional, si decides usarlo)
" nmap <C-p> :Telescope find_files<CR>














