function solve()
    k = parse(Int, readline())
    a, b = [parse(Int, x) for x in split(readline())]

    if (a ÷ k == b ÷ k) && a % k != 0
        "NG"
    else
        "OK"
    end
end

println(solve())
