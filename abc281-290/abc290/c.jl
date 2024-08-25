function solve()
    N, K = [parse(Int, x) for x in split(readline())]
    A = Set([parse(Int, x) for x in split(readline())])

    m = 0
    while m ∈ A && m < K
        m += 1
    end
    m     
end

println(solve())
