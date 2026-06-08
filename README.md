# Neovim 配置

基于 [lazy.nvim](https://github.com/folke/lazy.nvim) 的 Neovim 配置，核心由 [snacks.nvim](https://github.com/folke/snacks.nvim) 驱动。

## 安装

```bash
git clone git@github.com:Aunnno/my-nvim.git ~/.config/nvim
```

首次启动时 lazy.nvim 会自动安装所有插件。

### 依赖

- Neovim >= 0.11 (使用原生 `vim.lsp.config()` API)
- [lua-language-server](https://github.com/LuaLS/lua-language-server)
- [pyright](https://github.com/microsoft/pyright)
- [fd](https://github.com/sharkdp/fd) (snacks picker 搜索)
- [lazygit](https://github.com/jesseduffield/lazygit) (可选, `<leader>gg`)
- Nerd Font (图标显示)

## 文件结构

```
~/.config/nvim/
├── init.lua              # 入口
├── lazy-lock.json        # 插件版本锁
└── lua/
    ├── core/
    │   ├── option.lua    # 编辑器基础设置
    │   ├── keymaps.lua   # 快捷键
    │   └── lsp.lua       # LSP 配置
    └── plugins/
        ├── plugins-setup.lua  # 插件声明 (lazy.nvim)
        ├── catppuccin.lua     # 主题
        ├── treesitter.lua     # 语法高亮
        ├── lualine.lua        # 状态栏
        ├── bufferline.lua     # 标签栏
        ├── noice.lua          # 消息/命令美化
        ├── gitsigns.lua       # Git 行内标记
        ├── comment.lua        # 快速注释
        └── autopairs.lua      # 自动括号配对
```

## 插件

| 插件 | 说明 |
|---|---|
| [catppuccin/nvim](https://github.com/catppuccin/nvim) | Catppuccin 主题 (mocha/latte 自动切换) |
| [folke/snacks.nvim](https://github.com/folke/snacks.nvim) | 工具集: 文件浏览 / 模糊搜索 / Git / 终端 / 仪表盘 |
| [saghen/blink.cmp](https://github.com/Saghen/blink.cmp) | Rust 驱动高性能补全引擎 |
| [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | 语法解析与高亮 |
| [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim) | LSP / 工具包管理器 |
| [folke/noice.nvim](https://github.com/folke/noice.nvim) | 命令栏 / 消息通知美化 |
| [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | 状态栏 |
| [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | 标签栏 |
| [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git 变更标记 |
| [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim) | 代码注释 (gcc / gc) |
| [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) | 自动括号配对 |
| [linux-cultist/venv-selector.nvim](https://github.com/linux-cultist/venv-selector.nvim) | Python 虚拟环境选择 |
| [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | 代码片段 |
| [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | 文件图标 |

### Snacks.nvim 已启用模块

`bigfile` `dashboard` `explorer` `indent` `input` `picker` `notifier` `quickfile` `scope` `scroll` `statuscolumn` `words` `terminal`

## 快捷键

> `<leader>` = `Space`

### 窗口 & 文件

| 按键 | 说明 |
|---|---|
| `<leader>t` | 切换文件浏览器 |
| `<leader>e` | 文件浏览器与编辑器间跳转 |
| `<leader>sv` | 水平分屏 |
| `<leader>sh` | 垂直分屏 |
| `<leader>w` | 保存 |
| `<leader>q` | 退出 |
| `<leader>bd` | 关闭当前 Buffer |
| `<leader>cR` | 重命名当前文件 |
| `jk` | 插入模式退出 |

### Buffer 导航

| 按键 | 说明 |
|---|---|
| `<leader>l` | 下一个 Buffer |
| `<leader>h` | 上一个 Buffer |

### 搜索

| 按键 | 说明 |
|---|---|
| `<leader>ff` | 搜索文件 |
| `<leader>fg` | 实时 Grep |
| `<leader>fb` | 搜索 Buffer |
| `<leader>fh` | 帮助标签 |
| `<leader>fd` | 诊断信息 |
| `<leader>fr` | 恢复上次搜索 |
| `<leader><space>` | 智能搜索 |
| `<leader>/` | Grep |
| `<leader>:` | 命令历史 |
| `<leader>nh` | 取消搜索高亮 |
| `]]` / `[[` | 下一个 / 上一个引用 |

### Git

| 按键 | 说明 |
|---|---|
| `<leader>gs` | Git 状态 |
| `<leader>gl` | Git 日志 |
| `<leader>gd` | Git 差异 |
| `<leader>gb` | Git 分支 |
| `<leader>gB` | Git Browse (浏览器) |
| `<leader>gg` | Lazygit |

### LSP

| 按键 | 说明 |
|---|---|
| `gd` | 跳转到定义 |
| `gr` | 查找引用 |
| `gI` | 跳转到实现 |
| `gy` | 跳转到类型定义 |
| `<leader>ss` | 文档符号 |

### 终端

| 按键 | 说明 |
|---|---|
| `<leader>` ` | 切换终端 |
| `<C-/>` | 切换终端 |
| `<C-o>` | 终端与编辑器间跳转 |

### 其他

| 按键 | 说明 |
|---|---|
| `<leader>z` | 禅模式 |
| `<leader>Z` | 窗口缩放 |
| `<leader>.` | 草稿 Buffer |
| `<leader>n` | 通知历史 |
| `,v` | Python 虚拟环境选择 |

## LSP

使用 Neovim 0.11+ 原生 `vim.lsp.config()` API，通过 mason.nvim 安装 server。

| 语言 | Server | 配置 |
|---|---|---|
| Lua | `lua-language-server` | LuaJIT 环境, `vim` 全局变量 |
| Python | `pyright-langserver` | basic 类型检查 |

光标停留时自动显示诊断浮窗，诊断样式：虚 text + 标记 + 下划线。
