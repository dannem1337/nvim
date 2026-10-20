return {
    {
        'mbbill/undotree',
        cmd = { 'UndotreeToggle', 'UndotreeShow', 'UndotreeHide', 'UndotreeFocus' },
        init = function()
            vim.keymap.set("n", "<leader>pu", vim.cmd.UndotreeToggle)
        end

    }
}
