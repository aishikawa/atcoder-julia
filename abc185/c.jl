function solve()
    l = parse(Int, readline())
    ret = 1
    for (x,y)=zip(l-11:l-1, 1:11)
        ret *= x
        ret ÷= y
    end
    ret
end

println(solve())
