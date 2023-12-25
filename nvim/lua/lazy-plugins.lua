local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}
})

require'nvim-treesitter.configs'.setup {
  ensure_installed = {
      "bash", "bibtex",
      "c", "c_sharp", "cmake", "comment", "cpp", "css",
      "diff", "dockerfile", "doxygen",
      "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore",
      "java", "javascript", "jsonc",
      "kotlin",
      "latex", "lua", "llvm",
      "make",
      "proto", "python",
      "query",
      "regex", "rust",
      "sql", 
      "typescript",
      "vim", "vimdoc",
      "xml" 
  },
  sync_install = false,
  auto_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
