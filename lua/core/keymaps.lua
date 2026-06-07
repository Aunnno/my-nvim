vim.g.mapleader = " "

local keymap = vim.keymap

-- 插入模式
keymap.set("i", "jk", "<ESC>")

-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")

-- 保存/退出
keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>q", ":q<CR>")

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- snacks.nvim 文件浏览器
keymap.set("n", "<leader>t", function() Snacks.explorer() end, { desc = "Toggle File Explorer" })
keymap.set("n", "<leader>e", function()
  local explorers = Snacks.picker.get({ source = "explorer" })
  if #explorers > 0 then
    local explorer = explorers[1]
    if explorer:is_focused() then
      -- 当前在文件树 → 跳回上一个代码窗口
      vim.cmd("wincmd p")
    else
      -- 当前在代码窗口 → 聚焦文件树
      explorer:focus()
    end
  else
    Snacks.explorer()
  end
end, { desc = "Focus File Explorer" })

-- snacks.nvim 终端
keymap.set("n", "<leader>`", function() Snacks.terminal() end, { desc = "Toggle Terminal" })
keymap.set("t", "<C-o>", "<C-\\><C-n><C-w>p", { desc = "Switch to last window" })
keymap.set("n", "<C-o>", "<C-w>p", { desc = "Switch to terminal" })

-- 切换buffer
keymap.set("n", "<leader>l", ":bnext<CR>")
keymap.set("n", "<leader>h", ":bprevious<CR>")

-- snacks.nvim picker (模糊搜索)
keymap.set("n", "<leader>ff", function() Snacks.picker.files() end, { desc = "Find files" })
keymap.set("n", "<leader>fg", function() Snacks.picker.grep() end, { desc = "Live grep" })
keymap.set("n", "<leader>fb", function() Snacks.picker.buffers() end, { desc = "Find buffers" })
keymap.set("n", "<leader>fh", function() Snacks.picker.help() end, { desc = "Help tags" })
keymap.set("n", "<leader>fd", function() Snacks.picker.diagnostics() end, { desc = "Diagnostics" })
keymap.set("n", "<leader>fr", function() Snacks.picker.resume() end, { desc = "Resume last search" })
keymap.set("n", "<leader><space>", function() Snacks.picker.smart() end, { desc = "Smart Find Files" })
keymap.set("n", "<leader>/", function() Snacks.picker.grep() end, { desc = "Grep" })
keymap.set("n", "<leader>:", function() Snacks.picker.command_history() end, { desc = "Command History" })

-- Git
keymap.set("n", "<leader>gs", function() Snacks.picker.git_status() end, { desc = "Git Status" })
keymap.set("n", "<leader>gl", function() Snacks.picker.git_log() end, { desc = "Git Log" })
keymap.set("n", "<leader>gd", function() Snacks.picker.git_diff() end, { desc = "Git Diff" })
keymap.set("n", "<leader>gb", function() Snacks.picker.git_branches() end, { desc = "Git Branches" })
keymap.set("n", "<leader>gB", function() Snacks.gitbrowse() end, { desc = "Git Browse" })
keymap.set("n", "<leader>gg", function() Snacks.lazygit() end, { desc = "Lazygit" })

-- LSP
keymap.set("n", "gd", function() Snacks.picker.lsp_definitions() end, { desc = "Goto Definition" })
keymap.set("n", "gr", function() Snacks.picker.lsp_references() end, { desc = "References" })
keymap.set("n", "gI", function() Snacks.picker.lsp_implementations() end, { desc = "Goto Implementation" })
keymap.set("n", "gy", function() Snacks.picker.lsp_type_definitions() end, { desc = "Goto Type Definition" })
keymap.set("n", "<leader>ss", function() Snacks.picker.lsp_symbols() end, { desc = "LSP Symbols" })

-- 其他 snacks 功能
keymap.set("n", "<leader>z", function() Snacks.zen() end, { desc = "Toggle Zen Mode" })
keymap.set("n", "<leader>Z", function() Snacks.zen.zoom() end, { desc = "Toggle Zoom" })
keymap.set("n", "<leader>.", function() Snacks.scratch() end, { desc = "Toggle Scratch Buffer" })
keymap.set("n", "<leader>n", function() Snacks.notifier.show_history() end, { desc = "Notification History" })
keymap.set("n", "<leader>bd", function() Snacks.bufdelete() end, { desc = "Delete Buffer" })
keymap.set("n", "<leader>cR", function() Snacks.rename.rename_file() end, { desc = "Rename File" })
keymap.set("n", "<c-/>", function() Snacks.terminal() end, { desc = "Toggle Terminal" })
keymap.set("n", "]]", function() Snacks.words.jump(vim.v.count1) end, { desc = "Next Reference" })
keymap.set("n", "[[", function() Snacks.words.jump(-vim.v.count1) end, { desc = "Prev Reference" })

