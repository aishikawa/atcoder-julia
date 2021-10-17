function solve()
    N, M, T = [parse(Int, x) for x in split(readline())]
    t = 0
    n = N
    for i=1:M
        A, B = [parse(Int, x) for x in split(readline())]
        n -= (A - t)
        if n ≤ 0
            return "No"
        end
        n += (B - A)
        n = min(n, N)
        t = B
    end
    n -= (T - t)
    n ≤ 0 ? "No" : "Yes"
end

println(solve())
