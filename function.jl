function add(a, b)
    a + b # returnは無くても良く、最後に評価されたものが返される
end

function sample1(a::Int, b::Int)::Int
    return a * b
end

function sample2(x...)
    for a in x
        println(a)
    end
end

f(x) = x + 1

println(f(2))
println(add(3, 4)) # 7
println(sample1(1, 2), "\n")
sample2(1,2,4,5,7)