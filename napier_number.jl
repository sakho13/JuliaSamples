using Plots

f(n) = (1 + 1 / n)^n


function main()
    y = []
    x = 1:10000

    for i in x
        push!(y, f(i))
    end

    plot(x, y)
    println(y[end])
end

main()