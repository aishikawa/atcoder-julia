function recursive(k)
    if k == 0
        1
    else
        k * recursive(k-1)
    end
end

function solve()
    n = parse(Int, readline())
    recursive(n)
end

println(solve())
