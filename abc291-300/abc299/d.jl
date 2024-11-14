function solve()
    N = parse(Int, readline())
    left = 1
    right = N

    while left+1 < right
        i = (left + right) ÷ 2
        println("? $i")
        flush(stdout)
        S = parse(Int, readline())
        if S == 0
            left = i
        else
            right = i
        end
    end

    println("! $left")
end

solve()
