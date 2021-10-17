function solve()
    n, m  = [parse(Int, x) for x in split(readline())]
    a = [parse(Int, x) for x in split(readline())]
    a = sort(a)
    t = 0
    b = zeros(Int, 0)
    for x in a
        push!(b, x-t-1)
        t = x
    end
    push!(b, n-t)
    b = [x for x in b if x≠0]
    if length(b) == 0
        0
    else
        k = minimum(b)
        sum([(x-1)÷k+1 for x in b])
    end
end

println(solve())
