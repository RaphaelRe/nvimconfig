return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "sainnhe/gruvbox-material" },
  { "rebelot/kanagawa.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "folke/tokyonight.nvim" },
  { "ficcdaf/ashen.nvim" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "kanagawa-wave",
      -- colorscheme = "gruvbox",
      -- colorscheme = "terafox",
      -- colorscheme = "tokyonight",
      colorscheme = "ashen",
    },
  },
}

