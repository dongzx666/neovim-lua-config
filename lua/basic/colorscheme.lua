local colorscheme = "catppuccin"
-- local colorscheme = "github_light"
-- local colorscheme = "github_dark"

-- if colorscheme == "catppuccin" then
--     require "conf.catppuccin"
-- end

local ok, _ = vim.cmd("colorscheme " .. colorscheme)
if not ok then
    vim.notify("colorscheme " .. colorscheme .. " not found!")
    return
end
