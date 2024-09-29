vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    -- Mind blowjob I mean mind blowing job :skull:
    use {'wbthomason/packer.nvim'}

    -- Telescope for fuzzy finding
    use {'nvim-lua/plenary.nvim'}
    use {'nvim-telescope/telescope.nvim'}
    use {'nvim-telescope/telescope-ui-select.nvim'}

    -- Treesitter for better syntax highlighting and code understanding
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- File explorer and UI
    use {'kyazdani42/nvim-web-devicons'}
    use {'nvim-lualine/lualine.nvim'}
    use {'nvim-tree/nvim-tree.lua'}
    use {'akinsho/bufferline.nvim'}

    -- Themes
    use {'shatur/neovim-ayu'}
    use {'catppuccin/nvim'}
    use {'rebelot/kanagawa.nvim'}

    -- Utility plugins
    use 'mbbill/undotree'
    use {
        'vyfor/cord.nvim',
        run = './build || .\\build',
        config = function() require('cord').setup() end
    }

    -- Git integration
    use {'lewis6991/gitsigns.nvim'}

    -- Auto tag and pairs
    use {'windwp/nvim-ts-autotag'}
    use {'windwp/nvim-autopairs'}

    -- Color utilities
    use {'norcalli/nvim-colorizer.lua'}
    use {'numToStr/Comment.nvim'}
    use {'ziontee113/color-picker.nvim'}
end)
