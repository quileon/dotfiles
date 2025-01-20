return {
  {
    "ibhagwan/fzf-lua",
    keys = {
      { "<leader><space>", false },
      { "<C-p>", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
    },
  },
  {
    "zbirenbaum/copilot.lua",
    opts = {
      filetypes = {
        ["*"] = true,
      },
    },
  },
  {
    "numToStr/Comment.nvim",
  },
}
