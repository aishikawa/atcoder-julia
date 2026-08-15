function solve()
    n = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]

    ans = zeros(Int, n)
    for a in A
        ans[a] += 1
    end

    for x in ans
        println(x)
    end
end

solve()
