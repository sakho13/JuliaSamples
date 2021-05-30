using Plots

# f(x) = x^3 - x^2 - 1
f(x) = sin(x)

function main()
    dx = 0.0001
    x_0 = 0.0
    x_max = 5.0

    x = x_0:dx:x_max
    dfdx = []
    map(x) do x
        push!(dfdx, ((f(x + dx) - f(x)) / dx))
    end

    plot(x, dfdx)

end

main()