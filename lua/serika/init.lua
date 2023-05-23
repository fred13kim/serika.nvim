local util = require("serika.util")

local bufferline = require("bufferline.theme")

local set = function()
    util.load()
end

return { set = set, bufferline = bufferline}
