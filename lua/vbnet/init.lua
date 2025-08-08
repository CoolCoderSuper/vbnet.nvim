local M = {}

function M.setup()
    vim.filetype.add {
        extension = {
            vb = function(path, _)
                if vim.fs.root(path, function(name, _) return name:match('%.vbproj$') end) then
                    return 'vbnet', function (buf)
                      vim.bo[buf].commentstring = "'%s"
                    end
                else
                    return 'vb'
                end
            end,
        },
    }
end

return M
