local ngx = require("ngx")
local cjson = require("cjson")

local authToken = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjb21wYW55Q29kZSI6IiIsIm9yZ0NvZGUiOiIiLCJpc3MiOiJ5dW91X2lzc3VlciIsImxvZ2luQ2xpZW50IjoiUEMiLCJleHAiOjE2OTY2NTA0MjQsInJvbGVUeXBlIjoiSEVBRCIsImlhdCI6MTY5NjU2NDAyNCwidXNlcklkIjoiNzcifQ.1WuixZshudMwNgKV6d8GcJxptrEA4GYW9tRy7GrdplE"

if authToken then
    local jwt_parts = {}
    -- `[^%.]+`匹配一个或多个不是点号的字符的连续序列
    for part in string.gmatch(authToken, "[^%.]+") do
        table.insert(jwt_parts, part)
    end

    if #jwt_parts == 3 then
        local base64_str = jwt_parts[2]
        local base64 = base64_str:gsub("-", "+"):gsub("_", "/") .. "=="
        print(base64)
        local jwt_decoded = ngx.decode_base64(base64)
        print("JSON字符串数据：" .. jwt_decoded)
        if jwt_decoded then
            local jwt_payload = cjson.decode(jwt_decoded)
            print(jwt_payload.userId)
        end
    end
end