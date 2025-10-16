-- lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- init.lua 예시
vim.opt.expandtab   = true   -- 탭을 스페이스로
vim.opt.shiftwidth  = 2      -- 자동 들여쓰기 폭
vim.opt.tabstop     = 2      -- 탭 표시 폭
vim.opt.smartindent = true   -- 단순한 문맥 기반 들여쓰기
-- (C/자바류면): vim.opt.cindent = true
-- 파일타입별 들여쓰기 규칙 사용
vim.cmd("filetype plugin indent on")

require("lazy").setup({
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup()
      vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
    end,
  },
  { "windwp/nvim-autopairs", config = true },
  { "tpope/vim-surround" },
  { "numToStr/Comment.nvim", config = true },
  { "folke/which-key.nvim", config = true },
  {
    "navarasu/onedark.nvim",
    priority = 1000,  -- 다른 플러그인보다 먼저 로드
    config = function()
      vim.cmd.colorscheme("onedark")
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
    },
  }
})
