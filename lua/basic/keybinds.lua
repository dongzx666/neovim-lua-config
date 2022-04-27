-- leader 键设置为空格
vim.g.mapleader = " "

vim.u.keymap = {
    set = {},
    opt = {
        ns_opt = {noremap = true, silent = true},
        se_opt = {silent = true, expr = true}
    },
    fn = {
        register_key = function(plug_name)
            local vim_api_set = vim.u.keymap.set[plug_name].vim_api_set
            for _, value in ipairs(vim_api_set) do
                vim.api.nvim_set_keymap(value[1], value[2], value[3], vim.u.keymap.opt[value[4]])
            end
        end
    }
}

vim.u.keymap.set.base = {
    vim_api_set = {
        {"n", "<C-j>", "5j", "ns_opt"},
        {"n", "<C-k>", "5k", "ns_opt"},
        {"n", "<C-s>", ":wa<CR>", "ns_opt"},
        {"n", "<ESC>", ":nohlsearch<CR>", "ns_opt"},
        {"n", "<C-up>", "<cmd>res +1<CR>", "ns_opt"},
        {"n", "<C-down>", "<cmd>res -1<CR>", "ns_opt"},
        {"n", "<C-left>", "<cmd>vertical resize-1<CR>", "ns_opt"},
        {"n", "<C-right>", "<cmd>vertical resize+1<CR>", "ns_opt"},
        {"n", "<leader>cs", "<cmd>set spell!<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.bufferline = {
    vim_api_set = {
        {"n", "<c-h>", "<cmd>BufferLineCyclePrev<cr>", "ns_opt"},
        {"n", "<c-l>", "<cmd>BufferLineCycleNext<cr>", "ns_opt"},
        {"n", "<leader>w", "<cmd>Bdelete<CR>", "ns_opt"},
        {"n", "<leader>b1", "<cmd>BufferLineGoToBuffer 1<cr>", "ns_opt"},
        {"n", "<leader>b2", "<cmd>BufferLineGoToBuffer 2<cr>", "ns_opt"},
        {"n", "<leader>b3", "<cmd>BufferLineGoToBuffer 3<cr>", "ns_opt"},
        {"n", "<leader>b4", "<cmd>BufferLineGoToBuffer 4<cr>", "ns_opt"},
        {"n", "<leader>b5", "<cmd>BufferLineGoToBuffer 5<cr>", "ns_opt"},
        {"n", "<leader>b6", "<cmd>BufferLineGoToBuffer 6<cr>", "ns_opt"},
        {"n", "<leader>b7", "<cmd>BufferLineGoToBuffer 7<cr>", "ns_opt"},
        {"n", "<leader>b8", "<cmd>BufferLineGoToBuffer 8<cr>", "ns_opt"},
        {"n", "<leader>b9", "<cmd>BufferLineGoToBuffer 9<cr>", "ns_opt"}
        -- {"n", "<leader>bh", "<cmd>BufferLineCloseLeft<cr>", "ns_opt"},
        -- {"n", "<leader>bl", "<cmd>BufferLineCloseRight<cr>", "ns_opt"},
        -- {"n", "<leader>bt", "<cmd>BufferLinePick<cr>", "ns_opt"},
        -- {"n", "<leader>bs", "<cmd>BufferLineSortByExtension<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.hop = {
    vim_api_set = {
        {"n", "ss", "<cmd>HopWord<cr>", "ns_opt"},
        {"n", "sl", "<cmd>HopLine<cr>", "ns_opt"},
        {"n", "sc", "<cmd>HopChar1<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.neoformat = {
    vim_api_set = {
        {"n", "<leader>cf", "<cmd>Neoformat<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.todo_comments = {
    vim_api_set = {
        {"n", "<leader>ft", "<cmd>TodoTelescope theme=dropdown<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.undotree = {
    vim_api_set = {
        {"n", "<leader>3", ":UndotreeToggle<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.nvim_tree = {
    vim_api_set = {
        {"n", "<leader>1", "<cmd>NvimTreeToggle<CR>", "ns_opt"},
        {"n", "<leader>fc", "<cmd>NvimTreeFindFile<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.nvim_spectre = {
    vim_api_set = {
        {"n", "<leader>ro", "<cmd>lua require('spectre').open()<cr>", "ns_opt"},
        {"n", "<leader>rf", "viw:lua require('spectre').open_file_search()<cr>", "ns_opt"},
        -- {"n", "<leader>rw", "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "ns_opt"},
        {"n", "<leader>rc", ":close<CR>", "ns_opt"},
        {"n", "<leader>rp", "<cmd>lua require('spectre.actions').run_replace()<CR>", "ns_opt"},
        {"n", "<leader>rd", "<cmd>lua require('spectre').toggle_line()<CR>", "ns_opt"},
        {"n", "<leader>rv", "<cmd>lua require('spectre').change_view()<CR>", "ns_opt"},
        {"n", "<CR>", "<cmd>lua require('spectre.actions').select_entry()<CR>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.packer = {
    vim_api_set = {
        {"n", "<leader>ps", "<cmd>PackerSync<cr>", "ns_opt"},
        {"n", "<leader>pS", "<cmd>PackerStatus<cr>", "ns_opt"},
        {"n", "<leader>pc", "<cmd>PackerClean<cr>", "ns_opt"},
        {"n", "<leader>pu", "<cmd>PackerUpdate<cr>", "ns_opt"},
        {"n", "<leader>pi", "<cmd>PackerInstall<cr>", "ns_opt"},
        {"n", "<leader>pr", "<cmd>PackerCompile<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.nvim_hlslens = {
    vim_api_set = {
        -- search highlight
        {
            "n",
            "n",
            "<cmd>execute('normal! ' . v:count1 . 'n')<cr><cmd>lua require('hlslens').start()<cr>",
            "ns_opt"
        },
        {
            "n",
            "N",
            "<cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>",
            "ns_opt"
        },
        {"n", "*", "*<cmd>lua require('hlslens').start()<CR>", "ns_opt"},
        {"n", "#", "#<cmd>lua require('hlslens').start()<cr>", "ns_opt"},
        {"n", "g*", "g*<cmd>lua require('hlslens').start()<cr>", "ns_opt"},
        {"n", "g#", "g#<cmd>lua require('hlslens').start()<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.nvim_notify = {
    vim_api_set = {
        -- 显示历史弹窗
        {
            "n",
            "<leader>fn",
            "<cmd>lua require('telescope').extensions.notify.notify(require('telescope.themes').get_dropdown({}))<cr>",
            "ns_opt"
        }
    },
    plugin_set = {}
}

vim.u.keymap.set.telescope = {
    vim_api_set = {
        -- search files
        {
            "n",
            "<leader>ff",
            "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({}))<cr>",
            "ns_opt"
        },
        -- search with grep
        {
            "n",
            "<leader>fg",
            "<cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_dropdown({}))<cr>",
            "ns_opt"
        },
        -- search files recently opened
        {
            "n",
            "<leader>fo",
            "<cmd>lua require('telescope.builtin').oldfiles(require('telescope.themes').get_dropdown({}))<cr>",
            "ns_opt"
        },
        -- search marks
        {
            "n",
            "<leader>fm",
            "<cmd>lua require('telescope.builtin').marks(require('telescope.themes').get_dropdown({}))<cr>",
            "ns_opt"
        },
        -- search buffers
        {
            "n",
            "<leader>fb",
            "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({}))<cr>",
            "ns_opt"
        },
        -- search history
        {
            "n",
            "<leader>f/",
            "<cmd>lua require('telescope.builtin').search_history(require('telescope.themes').get_dropdown({}))<cr>",
            "ns_opt"
        },
        -- search command history
        {
            "n",
            "<leader>f:",
            "<cmd>lua require('telescope.builtin').command_history(require('telescope.themes').get_dropdown({}))<cr>",
            "ns_opt"
        },
        {
            "n",
            "<leader>fr",
            "<cmd>lua require('telescope').extensions.live_grep_raw.live_grep_raw()<cr>",
            "ns_opt"
        }
    },
    plugin_set = {}
}

vim.u.keymap.set.toggleterm = {
    vim_api_set = {
        {"n", "<leader>tf", "<cmd>lua require('toggleterm').float_toggle()<CR>", "ns_opt"},
        {"n", "<leader>tg", "<cmd>lua require('toggleterm').lazygit_toggle()<CR>", "ns_opt"},
        {"t", "<Esc>", "<C-\\><C-n>", "ns_opt"},
        {"n", "<leader>tt", "<cmd>ToggleTermToggleAll<CR>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.vim_translator = {
    vim_api_set = {
        {"n", "<leader>tsc", ":Translate --target_lang=zh --source_lang=auto<cr>", "ns_opt"},
        {"v", "<leader>tsc", ":TranslateW --target_lang=zh --source_lang=auto<cr>", "ns_opt"},
        {"n", "<leader>tse", ":Translate --target_lang=en --source_lang=auto<cr>", "ns_opt"},
        {"v", "<leader>tse", ":TranslateW --target_lang=en --source_lang=auto<cr>", "ns_opt"},
        {"n", "<leader>trc", ":TranslateR --target_lang=zh --source_lang=auto<cr>", "ns_opt"},
        {"v", "<leader>trc", ":TranslateR --target_lang=zh --source_lang=auto<cr>", "ns_opt"},
        {"n", "<leader>tre", ":TranslateR --target_lang=en --source_lang=auto<cr>", "ns_opt"},
        {"v", "<leader>tre", ":TranslateR --target_lang=en --source_lang=auto<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.aerial = {
    vim_api_set = {},
    plugin_set = {
        aerial_toggle = "<leader>2",
        aerial_prev = "{",
        aerial_next = "}",
        aerial_prev_up = "[[",
        aerial_next_up = "]]"
    }
    -- <C-j> : 移动到下一个项目
    -- <C-k> : 移动到上一个项目
    -- {     : 移动到上一个类别
    -- }     : 移动到下一个类别
    -- [[    : 移动到上一个类别
    -- ]]    : 移动到下一个类别
    -- o     : 打开当前项目
    -- za    : 切换当前项目
    -- zc    : 关闭当前项目
    -- zo    : 打开当前项目
    -- zM    : 关闭所有项目
    -- zR    : 关闭所有项目
}

vim.u.keymap.set.nvim_lsp_installer = {
    vim_api_set = {
        {"n", "gd", "<cmd>Telescope lsp_definitions theme=dropdown<CR>", "ns_opt"},
        {"n", "gr", "<cmd>Telescope lsp_references theme=dropdown<CR>", "ns_opt"},
        {"n", "go", "<cmd>Telescope diagnostics theme=dropdown<CR>", "ns_opt"},
        {"n", "<leader>ca", "<cmd>Telescope lsp_code_actions theme=dropdown<CR>", "ns_opt"},
        {"n", "<leader>cn", "<cmd>Lspsaga rename<CR>", "ns_opt"},
        {"n", "gh", "<cmd>Lspsaga hover_doc<CR>", "ns_opt"},
        {"n", "g[", "<cmd>Lspsaga diagnostic_jump_prev<CR>", "ns_opt"},
        {"n", "g]", "<cmd>Lspsaga diagnostic_jump_next<CR>", "ns_opt"},
        {"n", "<C-p>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>", "ns_opt"},
        {"n", "<C-n>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.lspsaga = {
    vim_api_set = {},
    plugin_set = {
        code_action_keys = {
            quit = "<esc>",
            exec = "<cr>"
        },
        rename_action_keys = {
            quit = "<esc>",
            exec = "<cr>"
        }
    }
}

for plug_name, _ in pairs(vim.u.keymap.set) do
    vim.u.keymap.fn.register_key(plug_name)
end
