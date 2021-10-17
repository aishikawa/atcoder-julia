function solve()
    a, b, c, k = [parse(Int, x) for x in split(readline())]
    if k <= a
        k
    elseif k <= a+b
        a
    else
        a - (k-a-b)
    end
end

println(solve())
