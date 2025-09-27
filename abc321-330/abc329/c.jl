using DataStructures

function solve()
    N = parse(Int, readline())
    S = collect(readline())

    d = DefaultDict{Char, Int, Int}(0)

    
    d[S[1]] = 1
    l = 1
    for r=2:N
        if S[r] == S[r-1]
            d[S[r]] = max(d[S[r]], r-l+1)
        else
            d[S[r]] = max(d[S[r]], 1)
            l = r
        end
    end

    sum(values(d))
end

println(solve())
