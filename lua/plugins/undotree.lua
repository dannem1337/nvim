return {
    {
        'mbbill/undotree',
        init = function()
            vim.keymap.set("n", "<leader>pu", vim.cmd.UndotreeToggle)
        end

    }
}
