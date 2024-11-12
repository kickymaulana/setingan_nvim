vim.opt.termguicolors = true
local bufferline = require('bufferline')
bufferline.setup {
    options = {
        numbers = "buffer_id",
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "left",
                separator = true
            }
        },
        groups = {
            options = {
                toggle_hidden_on_enter = true
            },
            items = {
                {
                    name = "Portal",
                    matcher = function(buf)
                        return buf.path:match('portal')
                    end
                },
                {
                    name = "Website",
                    matcher = function(buf)
                        return buf.path:match('website')
                    end
                },
            }
        },
        diagnostics = "coc",
        diagnostics_indicator = function(count, level)
            local icon = level:match("error") and " " or ""
            return " " .. icon .. count
        end,
        separator_style = "slant"
    }




}
