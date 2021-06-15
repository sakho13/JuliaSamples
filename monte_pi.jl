
function main()
    n = 10000000
    count = 0
    
    for _ in 0:n
        if sqrt(rand()^2 + rand()^2) <= 1.0 
            count += 1
        end
    end

    pi = 4 * count / n
    println(pi)
end

main()