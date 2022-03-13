function solve()
    p = parse(Int, readline())

    ret = 0
    for i=10:-1:1
        while factorial(i) ≤ p
            ret += 1
            p -= factorial(i)
        end
    end
    ret
end

println(solve())
