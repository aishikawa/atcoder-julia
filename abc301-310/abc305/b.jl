function solve()
    p, _, q = collect(readline())
    p -= 'A'
    q -= 'A'
    if q < p
        p, q = q, p
    end
    d = [3, 1, 4, 1, 5, 9]
    sum(d[p+1:q])
end

println(solve())
