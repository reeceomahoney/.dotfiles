return {
  { "christoomey/vim-tmux-navigator" },
  { "akinsho/bufferline.nvim", enabled = false },
  {
    "snacks.nvim",
    opts = {
      picker = {
        sources = {
          files = { hidden = true, ignored = true },
          explorer = { ignored = true },
          grep = { hidden = true, ignored = true },
        },
      },
    },
  },
  { "nvim-mini/mini.pairs", enabled = false },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        pyright = { enabled = false },
        ty = {},
      },
    },
  },
}
