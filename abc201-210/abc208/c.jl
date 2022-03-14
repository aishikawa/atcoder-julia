function solve()
    n, k = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]
    ps = sortperm(as)

    x = k ÷ n
    y = k % n

    ans = ones(Int, n) * x

    for i=1:y
        ans[ps[i]] += 1
    end
    for c in ans
        println(c)
    end
end

solve()
