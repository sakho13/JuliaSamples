using Plots

f(x, y) = - 0.3y + 1

function main() 
    h = 0.0001
    y_0 = 0.0

    x = 0.0:h:10.0
    y = []

    map(x) do x
        x == 0.0 ? push!(y, y_0) : push!(y, euler(h, x, y[end]))
    end

    plot(x, y)
    
end

function euler(h, x_i, y_i)
    return y_i + h * f(x_i, y_i)
end

main()