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
    { 
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "bash",
                "c", "c_sharp", "cmake", "cpp",
                "diff",
                "gitcommit",
                "make",
                "rust",
                "vim",
                "xml" 
            },
            sync_install = false,
            auto_install = false,
            highlight = {
              enable = true,
              additional_vim_regex_highlighting = false,
            },
        },
    },
    { "preservim/nerdtree", init = function() vim.cmd('source ~/git/dotfiles/vim/nerdtree.vim') end },
    { "mbbill/undotree", init = function() vim.cmd('source ~/git/dotfiles/vim/undotree.vim') end }
})

