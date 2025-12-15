return {
    {'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-live-grep-args.nvim'
    },
    config = function()
        local telescope = require("telescope")
        -- first setup telescope
        telescope.setup({
            extensions = {
                live_grep_args = {
                    auto_quoting = true, -- enable/disable auto-quoting
                    -- define mappings, e.g.
                -- ... also accepts theme settings, for example:
                -- theme = "dropdown", -- use dropdown theme
                -- theme = { }, -- use own theme spec
                -- layout_config = { mirror=true }, -- mirror preview pane
                }
            }
        })
        -- then load the extension
        local builtin = require('telescope.builtin')
        local lga_shortcuts = require("telescope-live-grep-args.shortcuts")
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set("n", "<leader>ps", lga_shortcuts.grep_word_under_cursor)
        vim.keymap.set("n", "<leader>pS", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
        telescope.load_extension("live_grep_args")
    end,
    }
}
