function solve()
    x = 0
    cs = []
    n = parse(Int, readline())
    for i=1:n
        a, b = [parse(Int, x) for x in split(readline())]
        x += a
        push!(cs, 2a+b)
    end
    sort!(cs)
    ret = 0
    while x ≥ 0
        ret += 1
        c = pop!(cs)
        x -= c
    end
    ret
end

println(solve())
