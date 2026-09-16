-- C:\Users\{users}\AppData\Local\nvim\init.lua

-- --- 起動時 / ディレクトリ設定 ---
-- vim.api.nvim_set_current_dir("E:/forge")
-- vim.api.nvim_set_current_dir("/Users/{user}/forge")

-- 基本設定
vim.g.mapleader = " "
vim.g.termfeatures = { osc52 = false }

vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"

-- 検索設定
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- インデント・タブ設定
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- バックアップ・スワップ設定
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

-- 不可視文字の設定
vim.opt.list = true
vim.opt.listchars = { trail = "□", tab = "»-" }

-- foldexpr に Tree-sitter を使用
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

-- キーマップ
-- インサート・ビジュアルモードでのエスケープ (fj)
vim.keymap.set({ "i", "v" }, "fj", "<Esc>", { silent = true })

-- 検索ハイライトを一時的に消す (<leader>nh)
vim.keymap.set("n", "<leader>nh", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

-- 今のファイルのディレクトリに "タブ単位" で移動
vim.keymap.set("n", "<leader>cd", "<cmd>tcd %:p:h<CR>", { desc = "Change tab working directory" })

-- カレントディレクトリで terminal を新タブで開く
vim.keymap.set("n", "<leader>tt", "<cmd>tab ter<CR>", { desc = "Open terminal in new tab" }) -- 編集中ファイルとHEADとの差分を表示

-- 今いるファイルのディレクトリで gitui を新タブで起動
vim.keymap.set("n", "<leader>gg", "<cmd>tab ter cd %:p:h && gitui<CR>", {
	desc = "Open gitui in new tab at current file's directory",
})

-- スペルチェックの切り替え (<leader>sc)
vim.keymap.set("n", "<leader>sc", function()
	vim.wo.spell = not vim.wo.spell
	if vim.wo.spell then
		vim.opt_local.spelllang = { "en", "cjk" }
		vim.opt_local.spelloptions = "camel"
		print("Spell check: ON")
	else
		print("Spell check: OFF")
	end
end, { desc = "Toggle spell check" })

-- 行末のスペース削除 (<leader>tw)
local function trim_whitespace()
	local save_cursor = vim.fn.getpos(".")
	vim.cmd([[%s/\s\+$//e]])
	vim.fn.setpos(".", save_cursor)
	print("Trailing spaces trimmed")
end

vim.api.nvim_create_user_command("TrimWhitespace", trim_whitespace, {})
vim.keymap.set("n", "<leader>tw", trim_whitespace, { desc = "Trim trailing spaces" })

-- --- 自動コマンド---
-- Markdownファイル用のHTMLコメントハイライト設定
vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.cmd.syntax('region htmlComment start="<!--" end="-->"')
		vim.cmd.hi("link htmlComment Comment")
	end,
})

-- カラースキーム (※必ず一番下に配置)
vim.cmd.colorscheme("evening")
