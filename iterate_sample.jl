"""
メイン
"""
function main()
    a = [2, 3, 3, 51, 3, 7, 2, 5]
    x = iterate(a)
    suma = 0

    while x !== nothing
        (v, nid) = x
        suma += v
        x = iterate(a, nid)
    end

    @show(suma)
end

main()