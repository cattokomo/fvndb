-- This is just a dummy file for the server to start, the actual app file is in src/init.lua 

local path = "/zip/lua_modules/share/lua/5.4"

package.path = table.concat({ path .. "/?.lua", path .. "/?/init.lua" }, ";") .. ";" .. package.path


LaunchBrowser("/")
require("init")
