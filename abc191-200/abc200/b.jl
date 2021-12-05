function solve()
    n, k = [parse(Int, x) for x in split(readline())]

    for _=1:k
        if n % 200 == 0
            n = n ÷ 200
        else
            n = 1000n + 200
        end
    end
    n
end

println(solve())
