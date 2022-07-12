function solve()
    n = parse(Int, readline())
    ss = [parse(Int, x) for x in split(readline())]
    ts = [parse(Int, x) for x in split(readline())]

    ans = copy(ts)
    update = false
    i = ii = 1
    prev = n
    while i ≤ n+1 || update
        update = false
        # println("ii=", ii)
        # println(ans[ii], " ", ans[prev], " ", ss[prev])
        if ans[ii] > ans[prev]+ss[prev]
            ans[ii] = ans[prev]+ss[prev]
            update = true
            # println("update ans[ii] to ", ans[ii])
        end
        i += 1
        ii = i % n == 0 ? n : i % n
        prev = ii == 1 ? n : ii-1
    end
    for a in ans
        println(a)
    end
end

solve()
