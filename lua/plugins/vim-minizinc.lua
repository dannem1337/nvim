return {
    {
        "vale1410/vim-minizinc",
        ft = { "zinc", "mzn" },
        init = function()
            vim.g.zinc_no_highlight_overlong = 1
        end
    }
}
