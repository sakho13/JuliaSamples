using Plots

f(x) = sin(x) * cos(x) + x^2 + 4

function main()
    dx = 0.0001
    x_0 = -5.0
    x_max = 5.0

    x = x_0:dx:x_max
    ds = []
    s = 0.0

    map(x) do x
        push!(ds, (f(x + dx) - f(x)) * dx)
        s += (f(x + dx) - f(x)) * dx
    end

    print(s)
    plot(x, ds)
end

main()