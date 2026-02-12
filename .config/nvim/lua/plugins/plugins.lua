return {
  { "akinsho/bufferline.nvim", enabled = false },
  {
    "snacks.nvim",
    opts = {
      scroll = { enabled = false },
      notifier = { enabled = false },
      picker = {
        sources = {
          files = { hidden = true, ignored = true },
          explorer = { ignored = true },
          grep = { hidden = true, ignored = true }
        }
      },
    },
  },
  { "github/copilot.vim" },
  { "neovim/nvim-lspconfig",   opts = { inlay_hints = { enabled = false } } },
  { "nvim-mini/mini.pairs",    enabled = false },
}
