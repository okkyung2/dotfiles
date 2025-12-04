-- ~/.config/nvim/init.lua
-- 가나다라ㅇdsadas
-- 리더 키
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 라인 넘버
vim.opt.number = true
vim.opt.relativenumber = true

-- 들여쓰기
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- 검색
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- 외관
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.scrolloff = 8

-- 분할
vim.opt.splitright = true
vim.opt.splitbelow = true

-- 기타
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.updatetime = 250

-- 키맵
local keymap = vim.keymap.set

-- 창 이동
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

-- 버퍼 이동
keymap("n", "<S-h>", ":bprevious<CR>")
keymap("n", "<S-l>", ":bnext<CR>")

-- 검색 하이라이트 끄기
keymap("n", "<Esc>", ":noh<CR>")

-- 저장
keymap("n", "<leader>w", ":w<CR>")
keymap("n", "<leader>q", ":q<CR>")

-- 들여쓰기 후 선택 유지
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- 줄 이동
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- jk ecs 매핑
keymap("i", "jk", "<Esc>")

-- im-select
vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    vim.fn.system("im-select com.apple.keylayout.ABC")
  end,
})
