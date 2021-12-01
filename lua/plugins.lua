local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Theme base on my personal favourites & https://vimcolorschemes.com/
    use 'folke/tokyonight.nvim'
    use {'rose-pine/neovim', as = 'rose-pine',}

    -- Explorer menu
    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons'
    }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {'windwp/nvim-ts-autotag'}
    use {'p00f/nvim-ts-rainbow'}
    use {'windwp/nvim-autopairs'}
    use 'nvim-treesitter/playground'

    -- Statusline
    use {
      'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- Telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    
    -- Bufferline
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

    -- Colorizer
    use 'norcalli/nvim-colorizer.lua'

    -- Dashboard 
    use 'glepnir/dashboard-nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'onsails/lspkind-nvim'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'folke/lsp-colors.nvim'
    use 'David-Kunz/cmp-npm'

    -- Indentation
    use "lukas-reineke/indent-blankline.nvim"
    
    -- Auto-save
    use "Pocco81/AutoSave.nvim"

    -- Auto-comment
    use 'numToStr/Comment.nvim'
    use 'JoosepAlviste/nvim-ts-context-commentstring'

    -- Terminal
    use {"akinsho/toggleterm.nvim"}
end)
