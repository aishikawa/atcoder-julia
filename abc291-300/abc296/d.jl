function solve()
    N, M = [parse(Int, x) for x in split(readline())]

    ans = -1
    for a=1:min(ceil(Int, √M), N)
        b = ceil(Int, M/a)
        if b ≤ N && (ans == -1 || a*b < ans)
            ans = a*b
        end
    end
    ans
end

println(solve())
