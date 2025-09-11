function solve()
    N = parse(Int, readline())
    D = [parse(Int, x) for x in split(readline())]

    ans = 0
    for i=1:N
        for j = 1:D[i]
            s = string(i) * string(j)
            if length(Set(collect(s))) == 1
                ans += 1
            end
        end
    end
    ans
end

println(solve())
