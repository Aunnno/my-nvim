-- 编码格式
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "UTF-8"
-- 缩进字符
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
-- 右侧参考线
vim.wo.colorcolumn = "160"
-- >> << 时移动长度
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
-- 新行对其当前行
vim.o.autoindent= true
vim.bo.autoindent= true
vim.o.smartindent= true
-- 搜索大小写不敏感
vim.o.ignorecase = true
vim.o.smartcase = true
-- 显示绝对行号
vim.opt.number = true
-- 启用鼠标
vim.opt.mouse:append("a")
-- 默认窗口右和下
vim.opt.splitright = true
vim.opt.splitbelow = true
-- 外观
vim.opt.termguicolors = true
vim.signcolumn = "yes"

