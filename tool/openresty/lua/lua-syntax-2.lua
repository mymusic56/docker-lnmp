print("-----------------Math-----------------------")
math.randomseed (os.time())
print("随机数(0~1): " .. math.random())
print("随机数[1~100]: " .. math.random(100))
print("随机数[1~100]: " .. math.random(1, 100))

print("-----------------Date字符串-----------------------")
print("当前日期：" .. os.date('%Y-%m-%d %H:%M:%S', os.time() + 8 * 3600))