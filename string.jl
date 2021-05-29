str = "Hello, World!!!"
println(typeof(str))
println(typeof(str[1])) # StringはCharの配列
println(str[1] == str[begin])
println(str[1]) # 配列は1から
println(str[end]) # 末尾の文字
println(str[begin:end]) # 範囲指定が可能

# for s in str
#     println(s)
# end
println(collect(str))
println("$str")