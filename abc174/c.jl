function solve()
    k = parse(Int, readline())
    if k % 2 == 0 || k % 5 == 0
        -1
    else
        ret = 1
        x = 7
        while x % k ≠ 0
            x = x % k * 10 + 7
            ret += 1
        end
        ret
    end
end

println(solve())
