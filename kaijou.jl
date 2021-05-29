# function f(x::BigInt)
#     if x == 0
#         return 1
#     else
#         return x * f(x - 1)
#     end
# end

g(x::BigInt) = (x == 0) ? 1 : x * g(x - 1)

# println(f(BigInt(10000)))
# @time println(g(BigInt(10000)))
println(g(BigInt(10000)))