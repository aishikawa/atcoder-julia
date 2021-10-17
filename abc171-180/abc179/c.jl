function solve()
    n = parse(Int, readline())
    ret = 0
    for a=1:n-1
        ret += floor(Int, (n-1) / a)
    end
    ret
end

println(solve())
