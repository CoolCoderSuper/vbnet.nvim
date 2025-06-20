local function setup()
    vim.filetype.add {
        extension = {
            vb = function(path, _)
                if vim.fs.root(path, function(name, _) return name:match('%.vbproj$') end) then
                    return 'vbnet'
                else
                    return 'vb'
                end
            end,
        },
    }
end

return {
    setup = setup,
}
