-- [[ plug.lua ]]

return require('packer').startup(
  function(use)
    -- [[ Plugins Go Here ]]
    use { -- filesystem navigation
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons' -- filesystem icons
    }

    -- [[ Theme ]]
    use { 'mhinz/vim-startify' } -- start screen
    use { 'DanilaMihailov/beacon.nvim' } -- cursor jump
    use {
      'nvim-lualine/lualine.nvim', -- statusline
      requires = { 'kyazdani42/nvim-web-devicons',
        opt = true }
    }
    use { 'Mofiqul/dracula.nvim' } -- colorscheme

    -- [[ Dev ]]
    use {
      'nvim-telescope/telescope.nvim', -- fuzzy finder
      requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use { 'majutsushi/tagbar' } -- code structure
    use { 'Yggdroot/indentLine' } -- see indentation
    use { 'tpope/vim-fugitive' } -- git integration
    use { 'junegunn/gv.vim' } -- commit history
    use { 'windwp/nvim-autopairs' } -- auto close brackets, etc.
    use { 'lewis6991/impatient.nvim' }
    use { 'tpope/vim-commentary' }
    use { 'mbbill/undotree' }
    use { 'tpope/vim-surround' }

    use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' },
        { 'williamboman/nvim-lsp-installer' },
        { 'mfussenegger/nvim-jdtls' },

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-path' },
        { 'saadparwaiz1/cmp_luasnip' },
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'hrsh7th/cmp-nvim-lua' },

        -- Snippets
        { 'L3MON4D3/LuaSnip' },
        { 'rafamadriz/friendly-snippets' },
      }
    }
  end
)
