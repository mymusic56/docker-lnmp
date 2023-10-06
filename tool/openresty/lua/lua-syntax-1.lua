print("hello world...")
print("----------------遍历类型------------------------")
print("字符串hello world:" .. type("hello world"))
print("数字123:" .. type(123))
print("数字123.1:" .. type(123.1))
print("true:" .. type(true))
print("null:" .. type(null))
print("{}:" .. type({}))
print("type方法:" .. type(type))

print("-----------------循环-----------------------")
local s  = "" for i = 1, 10 do s = s .. tostring(i) end print(s)
print("-----------------字符串:3种方式-----------------------")
local s1 = "你好1"
local s2 = '你好2'
local s3 = [[你好3]]
-- [[]]，如果字符串中含有方括号，可以添加一个或者多个=
local s4 = [===[你好3[]==]]===]
print(s1 .. s2..s3 .. s4)

print("-----------------字符串长度-----------------------")
print('字符串长度(中文站3个字节):' .. #s1)
s1 = 'abcde'
print('字符串长度:' .. #s1)
print('字符串长度:' .. string.len(s1))
print('截取字符串(从1开始):' .. s1:sub(1,3))
print('截取字符串(从1开始):' .. string.sub(s1,1,3))
s1 ="a,b,c,d,e"

print("-----------------IF-----------------------")
local a = 0 if a then print("0 == true: true") end a = "" if a then print("\"\" == true: true") end

a = nil if a == nil then print("nil == nil: true") end
a = 0 if a ~= nil then print("0 ~= nil: true") end
a = "" if a ~= nil then print("\"\" ~= nil: true") end
local b
a = nil
if a == b then print("local b 是 nil: true") else print("local b 是 nil: false") end

print("-----------------func-----------------------")
function funcName(name, age)
    return "姓名：" .. name .. '年龄' .. age
end
funcName2 = function (name, age)
    return "姓名：" .. name .. '年龄' .. age
end
print([[测试function-1:]] .. funcName("张三", 12))
print([[测试function-2:]] .. funcName2("张三", 12))

print("-----------------table-----------------------")
-- 创建一个示例表
local myTable = {name = "John", age = 30, 'tag', 123, [[true]]}
myTable['city'] = 'New York'
table.insert(myTable, 'insertVal')

-- 使用print输出表的内容
print("Table Contents.name:" .. myTable.name)
print("myTable[1](下标是从0开始):" .. myTable[1])
-- concat 不能有table、boolean类型
print("table.concat:" .. table.concat(myTable, ','))
print("table.concat:" .. table.getn(myTable))

-- 也可以使用循环输出表的所有键值对
function loopPrintTable(myTable)
    for key, value in pairs(myTable) do
        print(key, value)
    end
end

print(loopPrintTable(myTable))