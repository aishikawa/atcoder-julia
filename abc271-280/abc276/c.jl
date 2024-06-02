function solve()
    n = parse(Int, readline())
    ps = [parse(Int, x) for x in split(readline())]
    
    i = n-1
    while ps[i+1] > ps[i]
        i -= 1
    end

    j = n
    while ps[j] > ps[i]
        j -= 1
    end

    ps[i], ps[j] = ps[j], ps[i]
    ans = cat(ps[1:i], reverse(ps[i+1:end]), dims=1)
    join(ans, " ")
end

println(solve())
