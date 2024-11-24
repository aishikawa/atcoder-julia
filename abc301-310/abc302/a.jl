function solve()
    A, B = [parse(Int, x) for x in split(readline())]
    q, r = divrem(A, B)
    r == 0 ? q : q+1
end

println(solve())
