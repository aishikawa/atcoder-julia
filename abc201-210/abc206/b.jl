function solve()
    n = parse(Int, readline())
    s = 0
    for i=1:10^6
        s += i
        if s≥n
            return i
        end
    end
end

println(solve())