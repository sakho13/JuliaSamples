using Plots

f(x, y) = - 0.3y + 1

function main()
    h = 0.0001
    y_0 = 0.0

    x = 0.0:h:10.0
    y = []

    map(x) do x
        x == 0.0 ? push!(y, y_0) : push!(y, runge_kutta(h, x, y[end]))
    end

    plot(x, y)
    
end

function runge_kutta(h, x_i, y_i)
    k_1 = h * f(x_i, y_i)
    k_2 = h * f(x_i + h / 2, y_i + k_1 / 2)
    k_3 = h * f(x_i + h / 2, y_i + k_2 / 2)
    k_4 = h * f(x_i + h, y_i + k_3)

    return y_i + (k_1 + 2k_2 + 2k_3 + k_4) / 6
end

main()