-- resty lua-nginx.lua
local ngx_re = require "ngx.re"
local res, err = ngx_re.split("a,b,c,d", ",", nil, {pos = 5})
print(res)