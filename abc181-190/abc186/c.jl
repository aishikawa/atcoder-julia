function solve()
    n = parse(Int, readline())
    ret = 0
    for x=1:n
        base10 = string(x, base=10)
        base8 = string(x, base=8)
        if '7' ∉ base10*base8
            ret += 1
        end
    end
    ret
end

println(solve())
