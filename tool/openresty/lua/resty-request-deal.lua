ngx.say({"***********", ngx.req.get_method(), "测试", ngx.HTTP_GET})
if (ngx.req.get_method() == "GET") then
    -- do something
    ngx.say("Method-Type:GET")
end

ngx.req.set_uri_args("a=3")
ngx.req.set_uri("/foo")

ngx.say("--------------Header--------------")
local h, err = ngx.req.get_headers()

if err == "truncated" then
    -- one can choose to ignore or reject the current request here
    ngx.say('Header 获取失败')
end

for k, v in pairs(h) do
    ngx.say({"key: ", k, ', value: ', v})
end

-- 修改请求头
ngx.req.set_header("Content-Type", "text/css")

ngx.say("--------------获取请求体--------------")

-- 获取请求体
ngx.req.read_body()
local data = ngx.req.get_body_data()
if not data then
    local tmp_file = ngx.req.get_body_file()
    ngx.say("body_data()方法获取信息为空")
    -- io.open(tmp_file)
    -- ...
else
    ngx.say("请求体：" .. data)
end

-- 设置响应头(没有生效)
ngx.header.content_type = 'text/plain'
ngx.header["X-My-Header"] = 'blah blah'
ngx.header["X-My-Header"] = nil -- 删除

local ngx_resp = require "ngx.resp"
ngx_resp.add_header("Foo", "bar")

ngx.say("===========")