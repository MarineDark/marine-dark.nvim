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
        Background = '#001a19',

        Color0  = '#5a7e7e',
        Color1  = '#CCEEED',
        Color2  = '#ea3431',
        Color3  = '#E334CF',
        Color4  = '#00B6B6',
        Color5  = '#137ed1',
        Color6  = '#F5911B',
        Color7  = '#66CBC8',
        Color8  = '#E6F6F6',
        Color9  = '#00201F',
        Color10 = '#001F1E',
        Color11 = '#003a38',
        Color12 = '#122a1f',
        Color13 = '#1e2d1d',
        Color14 = '#0b282c',
        Color15 = '#00605e',
        Color16 = '#8cadac',
        Color17 = '#002928',
    }

    hl("Comment", { fg = colors.Color0, italic = true })
    hl("Identifier", { fg = colors.Color1 })
    hl("Error", { fg = colors.Color2 })
    hl("Keyword", { fg = colors.Color3 })
    hl("Conditional", { fg = colors.Color4 })
    hl("Repeat", { fg = colors.Color4 })
    hl("Function", { fg = colors.Color5 })
    hl("Number", { fg = colors.Color6 })
    hl("TSCharacter", { fg = colors.Color6 })
    hl("String", { fg = colors.Color7 })
    hl("StatusLine", { fg = colors.Color9, bg = colors.Color8 })
    hl("WildMenu", { fg = colors.Color1, bg = colors.Color10 })
    hl("Pmenu", { fg = colors.Color1, bg = colors.Color10 })
    hl("PmenuSel", { fg = colors.Color11, bg = colors.Color1 })
    hl("PmenuThumb", { fg = colors.Color1, bg = colors.Color10 })
    hl("DiffAdd", { bg = colors.Color12 })
    hl("DiffDelete", { bg = colors.Color13 })
    hl("Normal", { fg = colors.Color1, bg = colors.Background })
    hl("Visual", { bg = colors.Color14 })
    hl("CursorLine", { bg = colors.Color14 })
    hl("ColorColumn", { bg = colors.Color14 })
    hl("SignColumn", { bg = colors.Color10 })
    hl("LineNr", { fg = colors.Color15 })
    hl("TabLine", { fg = colors.Color16, bg = colors.Color17 })
    hl("TabLineSel", { fg = colors.Color11, bg = colors.Color8 })
    hl("TabLineFill", { fg = colors.Color16, bg = colors.Color17 })
    hl("TSPunctDelimiter", { fg = colors.Color1 })

    vim.cmd [[
        highlight! link TelescopeNormal Normal
        highlight! link TSFloat Number
        highlight! link TSConstBuiltin TSVariableBuiltin
        highlight! link TSParameterReference TSParameter
        highlight! link TSFuncMacro Macro
        highlight! link TSProperty TSField
        highlight! link TSPunctBracket MyTag
        highlight! link TSString String
        highlight! link TSLabel Type
        highlight! link TSKeyword Keyword
        highlight! link TSField Constant
        highlight! link TSParameter Constant
        highlight! link TSType Type
        highlight! link TSTagDelimiter Type
        highlight! link Repeat Conditional
        highlight! link Conditional Operator
        highlight! link TSFunction Function
        highlight! link NonText Comment
        highlight! link TSRepeat Repeat
        highlight! link Operator Keyword
        highlight! link TSComment Comment
        highlight! link TSPunctSpecial TSPunctDelimiter
        highlight! link TSOperator Operator
        highlight! link TSConditional Conditional
        highlight! link Whitespace Comment
        highlight! link Macro Function
        highlight! link TSNamespace TSType
        highlight! link CursorLineNr Identifier
        highlight! link TSTag MyTag
        highlight! link TSConstant Constant
        highlight! link Folded Comment
        highlight! link TSNumber Number
    ]]
end

return M
