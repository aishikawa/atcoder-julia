function solve()
    N = parse(Int, readline())
    S = readline()

    ans = fill(' ', N)
    isin = false
    for (i, c) in enumerate(S)
        if !isin && c == ','
            ans[i] = '.'
        else
            ans[i] = c
        end
        if c == '"'
            isin = !isin
        end
    end
    println(String(ans))
end

solve()
