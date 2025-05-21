function solve()
    N, D, P = [parse(Int, x) for x in split(readline())]
    F = [parse(Int, x) for x in split(readline())]
    sort!(F, rev=true)
    ans = sum(F)
    for x=1:cld(N,D)
        s = sum(F[(x-1)*D+1:min(x*D, N)])
        if s > P
            ans = ans - s + P
        else
            break
        end
    end
    ans
end

println(solve())
