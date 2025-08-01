function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]

    all(x->x==A[1], A[2:end]) ? "Yes" : "No"
end

println(solve())
