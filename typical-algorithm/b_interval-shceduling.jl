function solve()
    N = parse(Int, readline())
    tasks = fill((0, 0), N)
    for i=1:N
        tasks[i] = Tuple(parse(Int, x) for x in split(readline()))
    end
    sort!(tasks, by=x->(x[2], x[1]))

    ans = 0
    c = 0
    for t in tasks
        if c < t[1]
            ans += 1
            c = t[2]
        end
    end
    ans
end

println(solve())
