vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
    pattern = "*.vb",
    callback = function()
        vim.opt_local.filetype = "vbnet"
        vim.opt_local.syntax = "vbnet"
        vim.opt_local.commentstring = "'%s"
    end,
})
