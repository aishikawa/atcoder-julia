function solve()
    n = parse(Int, readline())
    as = Vector{Tuple{Rational, Rational}}()
    for i=1:n
        x, y = [parse(Int, x) for x in split(readline())]
        push!(as, ((y // (x-1)), (y-1) // x))
    end
    sort!(as)
    ret = 0
    now = 0//1
    for (r, l) in as
        if now ≤ l
            ret += 1
            now = r
        end
    end
    ret
end

println(solve())
