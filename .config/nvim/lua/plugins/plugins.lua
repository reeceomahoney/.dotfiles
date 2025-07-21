return {
  { "akinsho/bufferline.nvim", enabled = false },
  {
    "snacks.nvim",
    opts = {
      scroll = { enabled = false },
      notifier = { enabled = false },
      picker = { sources = { files = { ignored = true } } },
    },
  },
  { "github/copilot.vim" },
  { "neovim/nvim-lspconfig", opts = { inlay_hints = { enabled = false } } },
}
