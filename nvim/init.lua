--[[


  ██╗███╗   ██╗██╗████████╗██╗     ██╗   ██╗ █████╗
  ██║████╗  ██║██║╚══██╔══╝██║     ██║   ██║██╔══██╗
  ██║██╔██╗ ██║██║   ██║   ██║     ██║   ██║███████║
  ██║██║╚██╗██║██║   ██║   ██║     ██║   ██║██╔══██║
  ██║██║ ╚████║██║   ██║██╗███████╗╚██████╔╝██║  ██║
  ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝



Neovim init file
Version: 0.7.1_rev3 - 2021/10/09
Maintainer: Brainf+ck
Website: https://github.com/brainfucksec/neovim-lua
--]]

-----------------------------------------------------------
-- Import Lua modules
-----------------------------------------------------------

-- Archivo de configuración básico
require('settings')
require('keymaps')

-- Plugins
require('plugins/packer')                -- plugin manager
require('plugins/nvim-lspconfig')        -- LSP settings
require('plugins/ayu')                   -- theme
require('plugins/neo-tree')              -- filebrowser
require('plugins/feline')                -- statusline
require('plugins/gitsigns')              -- git decorations
require('plugins/indent-blankline')      -- indentation
require('plugins/nvim-treesitter')       -- tree-sitter interface
require('plugins/nvim-cmp')              -- autocomplete
require('plugins/sidebar-nvim')          -- sidebar
require('plugins/telescope-media-files') -- telescope media files
require('plugins/telescope-nvim')        -- telescope
require('plugins/telescope-ui-select')   -- telescope select
require('plugins/vista')                 -- tag viewer
require('plugins/rest')
require('plugins/todo-comments')
require('plugins/legendary')
require('plugins/neo-scrolle')            -- Smooth scrolling
require('plugins/mason-config')                     -- LSP definitivo
