using Plots

function main()
    # GR: 可視化パッケージの種類(デフォルト)
    # gr()
    p1()
end

function p1()
    p = Plots.plot(sin)
    # 関数の追加(どちらでも可)
    # plot!(cos)
    Plots.plot!(p, cos)
    # plot!(p, cos)
end

function p2()
    plot(x -> (x^2 - 2),
        xlabel="X",
        ylabel="Y",
        title="Graph",
        xlims=(-4, 4)
    )
end

function p3()
    x = -5:0.1:5
    y = x
    z = @. exp(-(x^2 + y'^2))
    plot(wireframe(x, y, z), title="surface")
end

function p4()
    plot(rand(10), st=:bar, title="bar", fmt=:png)
end

main() 