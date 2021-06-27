using Printf

function main()
    @printf "int x^2: %.3f\n" s1()
    # @printf "int f(r,θ): %.6f\n" s2()
    @printf "円周率: %.6f\n" spi()
end

function s1()
    f(x) = x^2
    a, b = -1.0, 1.0
    N = 1000000

    return (b - a) * sum(f.(randr(a, b, N))) / N
end

function s2()
    f(r, θ) = r^4 * sin(θ)
    rr, rθ = (0.0, 1.0), (0.0, π)
    N = 1000
    
    return (rr[2] - rr[1]) * (rθ[2] - rθ[1]) * sum(f.(randr(rr[1], rr[2], N), randr(rθ[1], rθ[2], N))) / N
end

"""
モンテカルロ法より 円周率 を求める。
"""
function spi()
    f(x) = sqrt(1 - x^2)
    a, b = 0.0, 1.0
    N = 10000000

    return 4 * (b - a) * sum(f.(randr(a, b, N))) / N
end


"""
Range: (a,b)
"""
function randr(a, b, n=1)
    return (n == 1) ? ((b - a) * rand() + a) : ((b - a) * rand(n) .+ a)
end

main()