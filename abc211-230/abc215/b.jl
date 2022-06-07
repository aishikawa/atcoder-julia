function solve()
    n = parse(Int, readline())
    ret = 0
    j = 0
    i = 1
    while i ≤ n
        if i & n ≠ 0
            ret = j
        end
        i <<= 1
        j += 1
    end
    ret
end

println(solve())
