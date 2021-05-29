# typemin typemax 使える
println(typemin(Int))
println(typemax(Int))

# 一回転する
type_max = typemax(Int)
println((type_max + 1) == typemin(Int)) # -> true

println(sizeof(Int))

println(0.0 == -0.0)
# ビットがどうなっているのか
println(bitstring(0.0))
println(typemax(Float64) == Inf)