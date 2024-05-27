-- marine-dark.lua
--
-- Marine dark colorscheme for Neovim
-- Colorscheme by ProDeSquare

local M = {}

function M.setup()
    vim.cmd [[highlight clear]]
    if vim.fn.exists("syntax_on") then
        vim.cmd [[syntax reset]]
    end
    vim.g.colors_name = "marine-dark"

    local hl = function(group, opts)
        vim.api.nvim_set_hl(0, group, opts)
    end

    local colors = {
        bg       = "#001a19",
        fg       = "#e6f8f8",
        red      = "#ea3431",
        green    = "#00b6b6",
        yellow   = "#f8b017",
        blue     = "#4894fd",
        magenta  = "#fb00ef",
        cyan     = "#1ab2ad",
        white    = "#99dddb",
        grey     = "#668b8b",
    }

    hl("Normal", { fg = colors.fg, bg = colors.bg })
    hl("Comment", { fg = colors.grey, italic = true })
    hl("Constant", { fg = colors.cyan })
    hl("Identifier", { fg = colors.blue })
    hl("Statement", { fg = colors.red })
    hl("PreProc", { fg = colors.magenta })
    hl("Type", { fg = colors.yellow })
    hl("Special", { fg = colors.green })
    hl("Underlined", { fg = colors.blue, underline = true })
    hl("Error", { fg = colors.red, bg = colors.bg, bold = true })
    hl("Todo", { fg = colors.magenta, bg = colors.bg, bold = true })
end

return M
