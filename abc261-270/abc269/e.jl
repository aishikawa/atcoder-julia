function solve()
    n = parse(Int, readline())

    l = 1
    r = n

    while l ≠ r
        num_half = (r-l+1) ÷ 2
        p = l + num_half - 1
        println("? 1 $n $l $p") 
        flush(stdout)
        t = parse(Int, readline())
        if t < num_half
            r = p
        else
            l = p+1
        end
    end
    x = l

    l = 1
    r = n
    while l ≠ r
        num_half = (r-l+1) ÷ 2
        p = l + num_half - 1
        println("? $l $p 1 $n") 
        flush(stdout)
        t = parse(Int, readline())
        if t < num_half
            r = p
        else
            l = p+1
        end
    end
    y = l
    println("! $y $x")
end

solve()
