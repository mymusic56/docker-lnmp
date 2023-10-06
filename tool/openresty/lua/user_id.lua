local cjson = require("cjson")
local authToken = ngx.req.get_headers()['token']
-- 用户ID默认值为0
ngx.var.user_id = 0
if authToken then
    local jwt_parts = {}
    -- `[^%.]+`匹配一个或多个不是点号的字符的连续序列
    for part in string.gmatch(authToken, "[^%.]+") do
        table.insert(jwt_parts, part)
    end

    if #jwt_parts == 3 then
        local base64_str = jwt_parts[2]
        local base64 = base64_str:gsub("-", "+"):gsub("_", "/") .. "=="
        local jwt_decoded = ngx.decode_base64(base64)
        if jwt_decoded then
            local jwt_payload = cjson.decode(jwt_decoded)
            if jwt_payload then
                ngx.var.user_id = jwt_payload.userId
            end
        end
    end
end
return ngx.var.user_id
