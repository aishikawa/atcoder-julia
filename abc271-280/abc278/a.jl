function solve()
    N, K = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]
    
    ans = cat(as[K+1:end], zeros(Int, min(N, K)), dims=1)

    join(ans, " ")
end

println(solve())
