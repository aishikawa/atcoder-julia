function a(n, x)
    if n ≥ x
        n - (x - 1)
    else
        0
    end
end

function solve()
    n = parse(Int, readline())
    ret = 0
    for i in 3:3:15
        ret += a(n, 10^i)
    end
    ret
end

println(solve())
