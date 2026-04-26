function solve()
    N = parse(Int, readline())
    M = floor(Int, cbrt(N))

    for x=M:-1:1
        s = string(x^3)
        if s == reverse(s)
            return s
        end
    end
end

println(solve())
