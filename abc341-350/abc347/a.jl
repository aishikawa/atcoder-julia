function solve()
    N, K = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]
    join([a ÷ K for a in A if a % K == 0], " ")
end

println(solve())
