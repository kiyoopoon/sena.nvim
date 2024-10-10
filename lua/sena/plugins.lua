vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    -- Packer can manage itself
    -- Mind blowjob I mean mind blowing job :skull:
    use({ "wbthomason/packer.nvim" })

    -- Telescope for fuzzy finding
    use({ "nvim-lua/plenary.nvim" })
    use({ "nvim-telescope/telescope.nvim" })
    use({ "nvim-telescope/telescope-ui-select.nvim" })

    -- Treesitter for better syntax highlighting and code understanding
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

    -- LSP, autocomplete, autoformat, and linting
    use({
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    })

    use({ "hrsh7th/nvim-cmp" })

    use({
        "L3MON4D3/LuaSnip",
        run = "make install_jsregexp",
    })
    use({ "saadparwaiz1/cmp_luasnip" })
    use({ "hrsh7th/cmp-nvim-lsp" })
    use({ "rafamadriz/friendly-snippets" })

    use({
        "nvimtools/none-ls.nvim",
        requires = {
            "nvimtools/none-ls-extras.nvim",
        },
    })

    use({ "gelguy/wilder.nvim" })

    -- File explorer and UI
    use({ "kyazdani42/nvim-web-devicons" })
    use({ "nvim-lualine/lualine.nvim" })

    use({
        "nvim-neo-tree/neo-tree.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
            "3rd/image.nvim",
            "s1n7ax/nvim-window-picker",
        },
    })

    use({ "romgrk/barbar.nvim" })

    -- Themes
    use({ "shatur/neovim-ayu" })
    use({ "catppuccin/nvim" })
    use({ "rebelot/kanagawa.nvim" })
    use("RRethy/nvim-base16")

    -- Dashboard
    use({
        "goolord/alpha-nvim",
        config = function()
            require("alpha").setup(require("alpha.themes.dashboard").config)
        end,
    })

    -- Utility plugins
    use({ "folke/flash.nvim" })

    use({ "mbbill/undotree" })
    use({ "lukas-reineke/indent-blankline.nvim" })
    use({ "RRethy/vim-illuminate" })

    use({ "ellisonleao/carbon-now.nvim" })

    -- Live markdown preview
    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    })

    -- Discord RPC
    use({
        "vyfor/cord.nvim",
        run = "./build || .\\build",
        config = function()
            require("cord").setup()
        end,
    })

    -- Git integration
    use({ "lewis6991/gitsigns.nvim" })

    -- Auto tag and pairs
    use({ "windwp/nvim-ts-autotag" })
    use({ "windwp/nvim-autopairs" })

    -- Color utilities
    use({ "norcalli/nvim-colorizer.lua" })
    use({ "numToStr/Comment.nvim" })
    use({ "ziontee113/color-picker.nvim" })
end)
