local packer = require("packer")
packer.startup(
    {
        -- 所有插件的安装都书写在 function 中
        function()
            -- 包管理器
            use {
                "wbthomason/packer.nvim"
            }

            -- nvim-tree
            use {
                "kyazdani42/nvim-tree.lua",
                requires = {
                    -- 依赖一个图标插件
                    "kyazdani42/nvim-web-devicons"
                },
                cmd = {"NvimTreeToggle", "NvimTreeFindFile"},
                config = function()
                    -- 插件加载完成后自动运行 lua/conf/nvim-tree.lua 文件中的代码
                    require("conf.nvim-tree")
                end
            }
            -- 优秀的暗色主题
            use {
                "catppuccin/nvim",
                -- 改个别名，因为它的名字是 nvim，可能会冲突
                as = "catppuccin",
                config = function()
                    -- 插件加载完成后自动运行 lua/conf/catppuccin.lua 文件中的代码
                    require("conf.catppuccin")
                end
            }
            use {
                "projekt0n/github-nvim-theme",
                config = function()
                    require("conf.github-nvim-theme")
                end
            }
            -- 炫酷的状态栏插件
            use {
                "windwp/windline.nvim",
                config = function()
                    -- 插件加载完成后自动运行 lua/conf/windline.lua 文件中的代码
                    require("conf.windline")
                end
            }
            -- 支持 LSP 状态的 buffer 栏
            use {
                "akinsho/bufferline.nvim",
                requires = {
                    "famiu/bufdelete.nvim" -- 删除 buffer 时不影响现有布局
                },
                config = function()
                    require("conf.bufferline")
                end
            }
            -- 搜索时显示条目
            use {
                "kevinhwang91/nvim-hlslens",
                config = function()
                    require("conf.nvim-hlslens")
                end
            }
            -- 显示缩进线
            use {
                "lukas-reineke/indent-blankline.nvim",
                config = function()
                    require("conf.indent-blankline")
                end
            }
            -- 自动匹配括号
            use {
                "windwp/nvim-autopairs",
                event = "InsertEnter",
                config = function()
                    require("conf.nvim-autopairs")
                end
            }
            -- 快速跳转
            use {
                "phaazon/hop.nvim",
                cmd = {"HopWord", "HopLine", "HopChar1"},
                config = function()
                    require("conf.hop")
                end
            }
            -- 拼写检查器
            use {
                "lewis6991/spellsitter.nvim",
                config = function()
                    require("conf.spellsitter")
                end
            }
            -- 自动恢复光标位置
            use {
                "ethanholz/nvim-lastplace",
                config = function()
                    require("conf.nvim-lastplace")
                end
            }
            -- 显示滚动条
            use {
                "petertriho/nvim-scrollbar",
                config = function()
                    require("conf.nvim-scrollbar")
                end
            }
            -- undo tree
            use {
                "mbbill/undotree",
                config = function()
                    require("conf.undotree")
                end
            }
            -- 模糊查找
            use {
                "nvim-telescope/telescope.nvim",
                requires = {
                    "nvim-lua/plenary.nvim", -- Lua 开发模块
                    "BurntSushi/ripgrep", -- 文字查找
                    "sharkdp/fd", -- 文件查找
                    "nvim-telescope/telescope-live-grep-raw.nvim"
                },
                config = function()
                    require("conf.telescope")
                end
            }
            -- 精美弹窗
            use {
                "rcarriga/nvim-notify",
                config = function()
                    require("conf.nvim-notify")
                end
            }
            -- todo tree
            use {
                "folke/todo-comments.nvim",
                config = function()
                    require("conf.todo-comments")
                end
            }
            -- LSP 基础服务
            use {
                "neovim/nvim-lspconfig",
                config = function()
                    require("conf.nvim-lspconfig")
                end
            }
            -- 自动安装 LSP
            use {
                "williamboman/nvim-lsp-installer",
                config = function()
                    require("conf.nvim-lsp-installer")
                end
            }
            -- LSP UI 美化
            use {
                "tami5/lspsaga.nvim",
                config = function()
                    require("conf.lspsaga")
                end
            }
            -- LSP 进度提示
            use {
                "j-hui/fidget.nvim",
                config = function()
                    require("conf.fidget")
                end
            }
            -- 灯泡提示代码行为
            use {
                "kosayoda/nvim-lightbulb",
                config = function()
                    require("conf.nvim-lightbulb")
                end
            }
            -- 自动代码补全系列插件
            use {
                "hrsh7th/nvim-cmp", -- 代码补全核心插件，下面都是增强补全的体验插件
                requires = {
                    {"onsails/lspkind-nvim"}, -- 为补全添加类似 vscode 的图标
                    {"hrsh7th/vim-vsnip"}, -- vsnip 引擎，用于获得代码片段支持
                    {"hrsh7th/cmp-vsnip"}, -- 适用于 vsnip 的代码片段源
                    {"hrsh7th/cmp-nvim-lsp", after = {"aerial.nvim"}}, -- 替换内置 omnifunc，获得更多补全
                    {"hrsh7th/cmp-path"}, -- 路径补全
                    {"hrsh7th/cmp-buffer"}, -- 缓冲区补全
                    {"hrsh7th/cmp-cmdline"}, -- 命令补全
                    {"f3fora/cmp-spell"}, -- 拼写建议
                    {"rafamadriz/friendly-snippets"}, -- 提供多种语言的代码片段
                    {"lukas-reineke/cmp-under-comparator"} -- 让补全结果的排序更加智能
                    --{"tzachar/cmp-tabnine", run = "./install.sh"} -- tabnine 源,提供基于 AI 的智能补全
                },
                config = function()
                    require("conf.nvim-cmp")
                end
            }
            -- 语法高亮
            use {
                "nvim-treesitter/nvim-treesitter",
                run = {":TSupdate"},
                requires = {
                    "p00f/nvim-ts-rainbow" -- 彩虹括号
                },
                config = function()
                    require("conf.nvim-treesitter")
                end
            }
            use {
                "terrortylor/nvim-comment",
                config = function()
                    require("conf.nvim-comment")
                end
            }
            -- 代码格式化
            use {
                "sbdchd/neoformat",
                cmd = "Neoformat",
                config = function()
                    require("conf.neoformat")
                end
            }
            -- 自动保存
            use {
                "Pocco81/AutoSave.nvim",
                config = function()
                    require("conf.AutoSave")
                end
            }
            -- 全局替换
            use {
                "nvim-pack/nvim-spectre",
                requires = {
                    "nvim-lua/plenary.nvim", -- Lua 开发模块
                    "BurntSushi/ripgrep" -- 文字查找
                },
                config = function()
                    require("conf.nvim-spectre")
                end
            }
            -- 内置终端
            use {
                "akinsho/toggleterm.nvim",
                config = function()
                    require("conf.toggleterm")
                end
            }
            use {
                "simrat39/symbols-outline.nvim",
                config = function()
                    require("conf.symbols-outline")
                end
            }
            use {
                "voldikss/vim-translator",
                config = function()
                    require("conf.vim-translator")
                end
            }
            use {
                "lewis6991/gitsigns.nvim",
                disable = false,
                after = {"nvim-treesitter"},
                config = function()
                    require("conf.gitsigns")
                end
            }
            use {
                "stevearc/aerial.nvim",
                after = {"nvim-lspconfig"},
                config = function()
                    require("conf.aerial")
                end
            }
            use {
                "folke/which-key.nvim",
                -- event = {"BufRead", "BufNewFile"},
                config = function()
                    require("conf.which-key")
                end
            }
        end,
        -- 使用浮动窗口
        config = {
            display = {
                open_fn = require("packer.util").float
            }
        }
    }
)
-- 实时生效配置
vim.cmd(
    [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]
)
