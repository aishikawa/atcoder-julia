function solve()
    n = parse(Int, readline())
    max_a = floor(Int, ∛n)
    ret = 0
    for a=1:max_a
        max_b = floor(Int, √(n ÷ a))
        for b=a:max_b
            ret += n ÷ (a*b) - b + 1
        end
    end
    ret
end

println(solve())
