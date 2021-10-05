function solve()
    n = parse(Int, readline())
    ret = 0
    for i=1:n-1
        ret += 1 / (1 - i/n)
    end
    ret
end

println(solve())
