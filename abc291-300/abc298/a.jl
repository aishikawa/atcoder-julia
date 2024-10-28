function solve()
    N = parse(Int, readline())
    S = collect(readline())

    good = poor = false
    for s in S
        if s == 'o'
            good = true
        elseif s == 'x'
            poor = true
        end
    end

    good && !poor ? "Yes" : "No"
end

println(solve())
