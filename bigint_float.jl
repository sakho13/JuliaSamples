println("** Int **")
println(typemax(Int))
println(typemax(Int) + 1)
println(BigInt(typemax(Int)) + 1)

println("\n** Float **")
println(typemax(Float64))
println(typemax(Float64) + 1)
println(BigFloat(typemax(Float64)) + 1.0)