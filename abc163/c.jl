function solve()
    n = parse(Int, readline())
    a = [parse(Int, x) for x in split(readline())]

    ans = zeros(Int, n)
    for i=1:length(a)
        ans[a[i]] += 1
    end

    for x in ans
        println(x)
    end
end

solve()
