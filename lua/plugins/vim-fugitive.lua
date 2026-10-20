return {
    {
        'tpope/vim-fugitive',
        cmd = { 'Git', 'G', 'Gdiffsplit', 'Gread', 'Gwrite', 'Gclog', 'Gedit', 'Gvdiffsplit' },
        init = function()
            vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
        end
    }
}
