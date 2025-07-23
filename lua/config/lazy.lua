require("lazy").setup({
  spec = {
    -- add and import StellarVim and its plugins
    {
      "nova-desktop/StellarVim",
      import = "stellarvim.plugins",
      opts = {
        -- Set your preferred colorscheme
        -- This can be a string or a function
        -- Remember to also set this in the install section below
        colorscheme = function()
          require("tokyonight").load()
        end,
      },
    },
    -- Setup StellarExtras
    { import = "extras" },
    -- override with your plugins
    { import = "plugins" },
  },
  defaults = {
    lazy = false,
    version = false,
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = {
    enabled = true,
    notify = false,
  },
  performance = {
    rtp = {
      -- disable some default neovim plugins
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
