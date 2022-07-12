function solve()
    n = parse(Int, readline())
    s = string(n, base=2)
    ret = "A"
    for c in s[2:end]
        ret *= "B"
        if c == '1'
            ret *= "A"
        end
    end
    ret
end

println(solve())
