function solve()
    N, K = [parse(Int, x) for x in split(readline())]
    S = fill("", N)
    for i=1:N
        S[i] = readline()
    end

    ans = sort(S[1:K])
    for a in ans
        println(a)
    end
end

solve()
