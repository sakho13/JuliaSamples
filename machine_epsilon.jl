println(typeof(1.0))
println(bitstring(1.0))
# 表現可能な1.0の次に大きな浮動小数
println(nextfloat(1.0))
println(bitstring(nextfloat(1.0)))
# 表現可能な1.0の次に小さな浮動小数
println(prevfloat(1.0))